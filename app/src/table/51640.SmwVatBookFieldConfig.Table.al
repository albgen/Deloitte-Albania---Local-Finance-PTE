table 51640 "Smw Vat Book Field Config."
{
    Caption = 'VAT Book Field Configuration';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Book Code"; Code[20])
        {
            Caption = 'Book Code';
            DataClassification = CustomerContent;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(3; "Box No."; Text[250])
        {
            Caption = 'Box No.';
            DataClassification = CustomerContent;
        }
        field(4; "Sort No."; Integer)
        {
            Caption = 'Sort No.';
            DataClassification = CustomerContent;
        }
        field(5; "Presentation Order"; Integer)
        {
            Caption = 'Presentation Order';
            DataClassification = CustomerContent;
            Description = 'Ths field is used to order fields on Purchase Book or Sales Book.';
        }
        field(6; "Field Name"; Text[250])
        {
            Caption = 'Field Name';
            DataClassification = CustomerContent;
            Description = 'The name of field to be appeared on Purchase Book or Sales Book.';
        }
        field(7; "Field Formula"; Text[100])
        {
            Caption = 'Field Formula';
            DataClassification = CustomerContent;
        }
        field(8; "Totaling Type"; Enum "SmwTotatling Type")
        {
            Caption = 'Totaling Type';
            DataClassification = CustomerContent;
            Description = 'Normal Amounts,Formula,Formula VAT; "Normal Amounts" gets value from field base amount at Vat entry table, "Formula" gets base value from other fields that are assigned to this field, "Formula VAT" gets vat value from other fields.';
        }
        field(9; "Totaling Columns"; Text[250])
        {
            Caption = 'Totaling Columns';
            DataClassification = CustomerContent;
            Description = 'Filter to tell system from which fields must to get values. Totaling type must be different from "Normal amounts"';
        }
        field(10; "Calculate/SUM"; Boolean)
        {
            Caption = 'Calculate/SUM';
            DataClassification = CustomerContent;
            Description = 'Is used to tell system if it must treat this field or no. If No, system will not calculate any sum or value fro it.';
        }
        field(11; Show; Boolean)
        {
            Caption = 'Show';
            DataClassification = CustomerContent;
            Description = 'If True, appperas on VAT Books. This Field will be calculate either for Tru or False.';
        }
        field(12; "Reverse Sign"; Boolean)
        {
            Caption = 'Reverse Sign';
            DataClassification = CustomerContent;
            Description = 'Tells system to reverse total for this field.';
        }
        field(13; "Document Type"; enum "Smw Document Type")
        {
            Caption = 'Document Type';
            DataClassification = CustomerContent;
            Description = 'Tells system from which records to get values:  ,Invoice,Credit Memo';
        }
        field(14; "Gen. Bus. P. G. Filter"; Text[250])
        {
            TableRelation = "Gen. Business Posting Group";
            ValidateTableRelation = false;
            Caption = 'Gen. Bus. P. G. Filter';
            DataClassification = CustomerContent;
            Description = 'Filter that applied to Vat Entry Records on VAT books. This filter applied to fields on Vat Entry with same name.';
        }
        field(15; "Gen. Prod. P. G. Filter"; Text[250])
        {
            TableRelation = "Gen. Product Posting Group";
            ValidateTableRelation = false;
            Caption = 'Gen. Prod. P. G. Filter';
            DataClassification = CustomerContent;
            Description = 'Filter that applied to Vat Entry Records on VAT books. This filter applied to fields on Vat Entry with same name.';
        }
        field(16; "VAT Bus. P. G. Filter"; Text[250])
        {
            TableRelation = "VAT Business Posting Group";
            ValidateTableRelation = false;
            Caption = 'VAT Bus. P. G. Filter';
            DataClassification = CustomerContent;
            Description = 'Filter that applied to Vat Entry Records on VAT books. This filter applied to fields on Vat Entry with same name.';
        }
        field(17; "VAT Prod. P. G. Filter"; Text[250])
        {
            TableRelation = "VAT Product Posting Group";
            ValidateTableRelation = false;
            Caption = 'VAT Prod. P. G. Filter';
            DataClassification = CustomerContent;
            Description = 'Filter that applied to Vat Entry Records on VAT books. This filter applied to fields on Vat Entry with same name.';
        }
        field(18; "Reason Code"; Text[250])
        {
            TableRelation = "Reason Code";
            ValidateTableRelation = false;
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
            Description = 'Filter that applied to Vat Entry Records on VAT books. This filter applied to fields on Vat Entry with same name.';
        }
        field(19; "VAT Entry Type"; Enum "General Posting Type")
        {
            Caption = 'VAT Entry Type';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Book Code", Code)
        {
            Clustered = true;
        }
    }
    procedure CheckTextLanguage(LanguageCode: Code[20]) textLang: Text [250]
    var
        FieldBookTranslation: Record "Smw Field Book Translation";
    begin
        FieldBookTranslation.SetRange("Book Code", Rec."Book Code");
        FieldBookTranslation.SetRange(Code, Rec.Code);
        FieldBookTranslation.SetRange("Language Code", LanguageCode);

        textLang := '';
        if FieldBookTranslation.FindFirst() then
            textLang := FieldBookTranslation.Name;

        exit(textLang);
    end;
}
