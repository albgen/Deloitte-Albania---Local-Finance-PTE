// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Fields: "UCD No.", "No. of Imported Invoice", "Dont show in VAT Book", "Custom Account"
// ?|AL01   |AL01            |03.06.21|#AL01   |VT  |New Fields: "Bill No." New Function: SetBillNoField()

tableextension 51644 "Smw Purchase Header Ext" extends "Purchase Header"
{
    fields
    {
        field(51640; "Smw UCD No."; Code[20])
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
        field(51641; "Smw No. of Imported Invoice"; Code[20])
        {
            Description = 'AL01 - This field is used to associate Customs document to invoice. If this field is filled purchase book will get the data from vendor that is associated to this invoice.';
            Caption = 'No. of Imported Invoice';
            TableRelation = "Purch. Inv. Header"."No.";
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
            //FinanceSubscriptionMgt: Codeunit "Smw Finance Subscription Mgt.";
            begin
                // IF ("Smw Custom Account") AND ("Smw No. of Imported Invoice" <> '') AND ("Smw UCD No." <> '') THEN
                //     FinanceSubscriptionMgt.UpdateUCDonPostedInvoice("Smw No. of Imported Invoice", "Smw UCD No.");
            end;
        }
        field(51642; "Smw Dont show in VAT Book"; Boolean)
        {
            Description = 'AL01 - This field is used to prevent invoice to appears on purchase book.';
            Caption = 'Don''t show in VAT Book';
            DataClassification = CustomerContent;
        }
        field(51643; "Smw Custom Account"; Boolean)
        {
            Description = 'AL01 - This field is filled from vendor. If this field is true, then field No. Of imported invoice must be filled.';
            Caption = 'Custom Account';
            DataClassification = CustomerContent;
        }
        field(51644; "Smw Bill No."; Code[20])
        {
            Description = 'AL01 - Bill No.';
            Caption = 'Bill No.';
            DataClassification = CustomerContent;
        }
        modify("Buy-from Vendor No.")
        {
            trigger OnAfterValidate()
            var
                Vend2: Record Customer;
            begin
                //#AL01.s 10.11.20
                "Smw Custom Account" := false;
                if Vend2.Get("Buy-from Vendor No.") then
                    "Smw Custom Account" := Vend2."Smw Custom Account";
                //#AL01.e 10.11.20
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
        PurchasesPayablesSetup: record "Purchases & Payables Setup";
        NoSeries: Record "No. Series";
    begin
        PurchasesPayablesSetup.GET();

        NoSeries.SETFILTER(Code, '<>*', '');
        "Smw Bill No." := '';

        IF Rec."Document Type" = Rec."Document Type"::Order THEN
            NoSeries.SETRANGE(Code, PurchasesPayablesSetup."Posted Invoice Nos.");
        IF Rec."Document Type" = Rec."Document Type"::Invoice THEN
            NoSeries.SETRANGE(Code, PurchasesPayablesSetup."Posted Invoice Nos.");
        IF Rec."Document Type" = Rec."Document Type"::"Return Order" THEN
            NoSeries.SETRANGE(Code, PurchasesPayablesSetup."Posted Credit Memo Nos.");
        IF Rec."Document Type" = Rec."Document Type"::"Credit Memo" THEN
            NoSeries.SETRANGE(Code, PurchasesPayablesSetup."Posted Credit Memo Nos.");

        IF NoSeries.FINDFIRST() THEN
            NoSeries.SmwGetlastNoUsed("Smw Bill No.");
    end;
}
