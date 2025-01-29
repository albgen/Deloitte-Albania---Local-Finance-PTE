// / Smartwork Sh.P.K
// / -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// / T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// / -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// / T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// / |-+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ? |AL01   |AL01            |03.06.21|#AL01   |VT |New Field: "Bill No." and New Function: SetBillNoField()
// ? |AL01   |AL01            |12.10.21|#AL01   |VT |New Fields: "UCD No.", "No. of Exported Invoice", "Dont show in VAT Book", "Custom Account"
// / |                                              |Added code on trigger "Sell-to Customer No. - OnValidate()".

tableextension 51643 "Smw Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(51640; "Smw Dont show in VAT Book"; Boolean)
        {
            Description = 'AL01 - This field is used to prevent invoice to appears on sales book.';
            Caption = 'Don''t show in VAT Book';
            DataClassification = CustomerContent;
        }
        field(51641; "Smw Custom Account"; Boolean)
        {
            Description = 'AL01 - This field is filled from Customer. If this field is true, then field No. Of exported invoice must be filled.';
            Caption = 'Custom Account';
            DataClassification = CustomerContent;
        }
        field(51642; "Smw Bill No."; Code[20])
        {
            Description = 'AL01 - Bill No.';
            Caption = 'Bill No.';
            DataClassification = CustomerContent;
        }
        field(51643; "Smw UCD No."; Code[20])
        {
            Description = 'AL01 - Customs unique document number';
            Caption = 'UCD No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                //IF "No. of Imported Invoice" <> '' THEN
                //ERROR(TextDel001);
            end;
        }
        field(51644; "Smw No. of Exported Invoice"; Code[20])
        {
            Description = 'AL01 - This field is used to associate Customs document to invoice. If this field is filled sales book will get the data from cudtomer that is associated to this invoice.';
            Caption = 'No. of Exported Invoice';
            TableRelation = "Sales Invoice Header"."No.";
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                FinanceSubscriptionMgt: Codeunit "Smw Finance Subscription Mgt";
            begin
                IF ("Smw Custom Account") AND ("Smw No. of Exported Invoice" <> '') AND ("Smw UCD No." <> '') THEN
                    FinanceSubscriptionMgt.UpdateUCDonPostedSalesInvoice("Smw No. of Exported Invoice", "Smw UCD No.");
            end;
        }
        modify("Sell-to Customer No.")
        {
            trigger OnAfterValidate()
            var
                Cust2: Record Customer;
            begin
                //#AL01.s 12.10.21
                "Smw Custom Account" := false;
                if Cust2.Get("Sell-to Customer No.") then
                    "Smw Custom Account" := Cust2."Smw Custom Account";
                //#AL01.e 12.10.21
            end;
        }
    }

    trigger OnInsert()
    begin
        //VT 03/06/2021 Strating
        SmwSetBillNoField();
        //VT 03/06/2021 Strating
    end;

    local procedure SmwSetBillNoField()
    var
        SalesReceivablesSetup: record "Sales & Receivables Setup";
        NoSeries: Record "No. Series";
    begin
        SalesReceivablesSetup.GET();

        NoSeries.SETFILTER(Code, '<>*', '');
        "Smw Bill No." := '';

        IF Rec."Document Type" = Rec."Document Type"::Order THEN
            NoSeries.SETRANGE(Code, SalesReceivablesSetup."Posted Invoice Nos.");
        IF Rec."Document Type" = Rec."Document Type"::Invoice THEN
            NoSeries.SETRANGE(Code, SalesReceivablesSetup."Posted Invoice Nos.");
        IF Rec."Document Type" = Rec."Document Type"::"Return Order" THEN
            NoSeries.SETRANGE(Code, SalesReceivablesSetup."Posted Credit Memo Nos.");
        IF Rec."Document Type" = Rec."Document Type"::"Credit Memo" THEN
            NoSeries.SETRANGE(Code, SalesReceivablesSetup."Posted Credit Memo Nos.");

        IF NoSeries.FindFirst() THEN
            NoSeries.SmwGetlastNoUsed("Smw Bill No.");
    end;
}
