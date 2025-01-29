// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Fields: "UCD No.", "No. of Imported Invoice", "Dont show in VAT Book", "Custom Account"
// /|                                               |Added new Function "SmwCopyFromPurchHeader"
// ?|AL01   |AL01            |12.10.21|#AL01   |VT  |New Field:"No. of Exported Invoice", added new Function "SmwCopyFromSalesHeader"

tableextension 51647 "Smw Gen. Journal Line Ext" extends "Gen. Journal Line"
{
    fields
    {
        field(51640; "Smw UCD No."; Code[20])
        {
            Description = 'AL01 - Customs unique document number';
            Caption = 'UCD No.';
            DataClassification = CustomerContent;
        }
        field(51641; "Smw No. of Imported Invoice"; Code[20])
        {
            Description = 'AL01 - This field is used to associate Customs document to invoice. If this field is filled purchase book will get the data from vendor that is associated to this invoice.';
            Caption = 'No. of Imported Invoice';
            TableRelation = "Purch. Inv. Header"."No.";
            DataClassification = CustomerContent;
        }
        field(51642; "Smw Don't show in VAT Book"; Boolean)
        {
            Description = 'AL01 - This field is used to prevent invoice to appears on purchase book.';
            Caption = 'Don''t show in VAT Book';
            DataClassification = CustomerContent;
        }
        field(51643; "Smw Custom Account"; Boolean)
        {
            Description = 'AL01 - Customs unique document number';
            Caption = 'Custom Account';
            DataClassification = CustomerContent;
        }
        field(51644; "Smw No. of Exported Invoice"; Code[20])
        {
            Description = 'AL01 - This field is used to associate Customs document to invoice. If this field is filled sales book will get the data from cudtomer that is associated to this invoice.';
            Caption = 'No. of Exported Invoice';
            TableRelation = "Sales Invoice Header"."No.";
            DataClassification = CustomerContent;
        }
    }

    procedure SmwCopyFromPurchHeader(PurchHeader: Record "Purchase Header")
    begin
        //#AL01.s 10.11.20
        "Smw UCD No." := PurchHeader."Smw UCD No.";
        "Smw No. of Imported Invoice" := PurchHeader."Smw No. of Imported Invoice";
        "Smw Don't show in VAT Book" := PurchHeader."Smw Dont show in VAT Book";
        "Smw Custom Account" := PurchHeader."Smw Custom Account";
        //#AL01.e 10.11.20
    end;

    procedure SmwCopyFromSalesHeader(SalesHeader: Record "Sales Header")
    begin
        //#AL01.s 12.10.21
        "Smw UCD No." := SalesHeader."Smw UCD No.";
        "Smw No. of Exported Invoice" := SalesHeader."Smw No. of Exported Invoice";
        "Smw Don't show in VAT Book" := SalesHeader."Smw Dont show in VAT Book";
        "Smw Custom Account" := SalesHeader."Smw Custom Account";
        //#AL01.e 12.10.21
    end;
}
