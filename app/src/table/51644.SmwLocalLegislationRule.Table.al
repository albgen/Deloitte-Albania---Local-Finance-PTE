table 51644 "Smw Local Legislation Rule"
{
    Caption = 'Local Legislation Rule';
    DataClassification = CustomerContent;
    LookupPageId = "Smw Local Legislation Rules";
    DrillDownPageId = "Smw Local Legislation Rules";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
