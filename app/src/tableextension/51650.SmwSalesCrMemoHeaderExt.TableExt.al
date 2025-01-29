// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New field "Smw Cancelled","Smw Shipping Agent Code"
// ?|AL01   |AL01            |03.06.21|#AL01   |VT  |New field "Bill No."
// ?|AL01   |AL01            |12.10.21|#AL01   |VT  |New Fields: "UCD No.", "No. of Exported Invoice", "Dont show in VAT Book", "Custom Account"

tableextension 51650 "Smw Sales Cr.Memo Header Ext" extends "Sales Cr.Memo Header"
{
    fields
    {
        field(51640; "Smw Don't show in VAT Book"; Boolean)
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
            begin
                //IF ("Custom Account") AND ("No. of Imported Invoice" <> '') AND ("UCD No." <> '') THEN
                //FinanceSubscriptionMgt.UpdateUCDonPostedInvoice ("No. of Imported Invoice","UCD No.");
            end;
        }
        field(51645; "Smw Cancelled"; Boolean)
        {
            Description = 'AL01 - Smw Cancelled';
            Caption = 'Cancelled';
            DataClassification = CustomerContent;
        }
        field(51646; "Smw Shipping Agent Code"; code[10])
        {
            Description = 'AL01 - Shipping Agent Code';
            Caption = 'Shipping Agent Code';
            DataClassification = CustomerContent;
        }
    }
}
