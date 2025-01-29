// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Fields: "UCD No.", "No. of Imported Invoice", "Dont show in VAT Book", "Custom Account"
// ?|AL01   |AL01            |03.06.21|#AL01   |VT  |New field "Bill No."
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added code on field "Dont Show in VAT Book", "Vendor Invoice No."

tableextension 51651 "Smw Purch. Inv. Header Ext" extends "Purch. Inv. Header"
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
        field(51642; "Smw Dont show in VAT Book"; Boolean)
        {
            Description = 'AL01 - This field is used to prevent invoice to appears on purchase book.';
            Caption = 'Don''t show in VAT Book';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                VatEntry: Record "VAT Entry";
                Type: enum "General Posting Type";
                DocumentType: enum "Gen. Journal Document Type";
            begin
                // #KS001.s
                IF Rec."Smw Dont show in VAT Book" <> xRec."Smw Dont show in VAT Book" THEN BEGIN
                    Type := Type::Purchase;
                    DocumentType := DocumentType::Invoice;
                    VatEntry.SmwSetDontShowInVatBook(Type, DocumentType, Rec."No.", Rec."Smw Dont show in VAT Book");
                END;
                // #KS001.e
            end;
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
        modify("Vendor Invoice No.")
        {
            trigger OnAfterValidate()
            var
                VatEntry: Record "VAT Entry";
                Type: enum "General Posting Type";
                DocumentType: enum "Gen. Journal Document Type";
            begin
                // #KS001.s
                IF Rec."Vendor Invoice No." <> xRec."Vendor Invoice No." THEN BEGIN
                    Type := Type::Purchase;
                    DocumentType := DocumentType::Invoice;
                    VatEntry.SmwSetExternalDocNoInVatBook(Type, DocumentType, Rec."No.", Rec."Vendor Invoice No.");
                END;
                // #KS001.e
            end;
        }
    }
}
