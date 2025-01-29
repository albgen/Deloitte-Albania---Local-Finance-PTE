// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New field "UCD No."
tableextension 51641 "Smw Cust. Ledger Entry Ext" extends "Cust. Ledger Entry"
{
    fields
    {
        field(51640; "Smw UCD No."; Code[20])
        {
            Caption = 'UCD No.';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
            begin
                //IF "No. of Imported Invoice" <> '' THEN
                //ERROR(TextDel001);
            end;
        }
    }
}
