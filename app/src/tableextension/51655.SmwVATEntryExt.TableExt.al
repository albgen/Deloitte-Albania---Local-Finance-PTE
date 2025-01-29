// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Fields: "UCD No.", "No. of Imported Invoice", "Dont show in VAT Book", "Custom Account"
// /|                                               |"Global Dimension 1", "Global Dimension 2".
// ?|AL01   |AL01            |12.10.21|#AL01   |VT  |New Field:"No. of Exported Invoice", added code in function "CopyFromGenJnlLine".
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added new function "SetDontShowInVatBook", "SetExternalDocNoInVatBook"

tableextension 51655 "Smw VAT Entry Ext" extends "VAT Entry"
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
        }
        field(51643; "Smw Custom Account"; Boolean)
        {
            Description = 'AL01 - Customs unique document number';
            Caption = 'Custom Account';
            DataClassification = CustomerContent;
        }
        field(51644; "Smw Global Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,1,1';
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1),
                                                          Blocked = CONST(false));
            DataClassification = CustomerContent;
        }
        field(51645; "Smw Global Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,1,2';
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2),
                                                          Blocked = CONST(false));
            DataClassification = CustomerContent;
        }
        field(51646; "Smw Cancelled Entry"; Boolean)
        {
            Description = 'AL01 - Cancelled Entry';
            Caption = 'Cancelled Entry';
            DataClassification = CustomerContent;
        }
        field(51647; "Smw No. of Exported Invoice"; Code[20])
        {
            Description = 'AL01 - This field is used to associate Customs document to invoice. If this field is filled sales book will get the data from cudtomer that is associated to this invoice.';
            Caption = 'No. of Exported Invoice';
            TableRelation = "Sales Invoice Header"."No.";
            DataClassification = CustomerContent;
        }
    }

    procedure SmwSetDontShowInVatBook(pType: enum "General Posting Type"; pDocumentType: enum "Gen. Journal Document Type"; pDocumentNo: Code[20]; pDontShowInVatBook: Boolean)
    var
        VatEntry: Record "VAT Entry";
        VATEntries: Page "VAT Entries";
    begin
        VATEntry.FILTERGROUP(2);
        VATEntry.SETRANGE(Type, pType);
        VATEntry.SETRANGE("Document Type", pDocumentType);
        VATEntry.SETRANGE("Document No.", pDocumentNo);
        VATEntry.FILTERGROUP(0);
        VATEntry.FINDFIRST();
        VATEntries.SETTABLEVIEW(VATEntry);
        VATEntries.LOOKUPMODE(TRUE);
        IF NOT (VATEntries.RUNMODAL() = ACTION::LookupOK) THEN
            ERROR('');

        VATEntry.MODIFYALL("Smw Dont show in VAT Book", pDontShowInVatBook);
    end;

    procedure SmwSetExternalDocNoInVatBook(pType: enum "General Posting Type"; pDocumentType: enum "Gen. Journal Document Type"; pDocumentNo: Code[20]; pExternalDocNo: Code[40])
    var
        VatEntry: Record "VAT Entry";
        VATEntries: Page "VAT Entries";
    begin
        VATEntry.FILTERGROUP(2);
        VATEntry.SETRANGE(Type, pType);
        VATEntry.SETRANGE("Document Type", pDocumentType);
        VATEntry.SETRANGE("Document No.", pDocumentNo);
        VATEntry.FILTERGROUP(0);
        VATEntry.FINDFIRST();
        VATEntries.SETTABLEVIEW(VATEntry);
        VATEntries.LOOKUPMODE(TRUE);
        IF NOT (VATEntries.RUNMODAL() = ACTION::LookupOK) THEN
            ERROR('');

        VATEntry.MODIFYALL("External Document No.", pExternalDocNo);
    end;
}
