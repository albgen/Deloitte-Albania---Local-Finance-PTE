table 51641 "Smw Field Book Translation"
{
    Caption = 'Field Book Translation';
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
        field(3; "Language Code"; Code[10])
        {
            NotBlank = true;
            Caption = 'Language Code';
            DataClassification = CustomerContent;
        }
        field(4; Name; Text[250])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Book Code", "Code", "Language Code")
        {
            Clustered = true;
        }
    }
}
