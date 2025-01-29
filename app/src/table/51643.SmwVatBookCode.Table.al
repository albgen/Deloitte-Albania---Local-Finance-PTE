table 51643 "Smw Vat Book Code"
{
    Caption = 'Vat Book Code';
    DataClassification = CustomerContent;
    LookupPageId = "Smw Vat Book Codes";
    DrillDownPageId = "Smw Vat Book Codes";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
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
