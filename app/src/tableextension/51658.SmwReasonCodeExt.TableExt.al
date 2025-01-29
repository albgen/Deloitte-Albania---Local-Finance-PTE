// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added field "Bad Dept"

tableextension 51658 "Smw Reason Code Ext" extends "Reason Code"
{
    fields
    {
        field(51640; "Smw Bad Dept"; Boolean)
        {
            caption = 'Bad Dept';
            Description = 'KS01';
            DataClassification = CustomerContent;
        }
    }
}
