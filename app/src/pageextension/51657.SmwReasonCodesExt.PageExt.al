// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added field "Bad Dept"
pageextension 51657 "Smw Reason Codes Ext" extends "Reason Codes"
{
    Layout
    {
        addafter(Description)
        {
            field("Smw Bad Dept"; Rec."Smw Bad Dept")
            {
                ToolTip = 'Specifies the value of the Bad Dept field.';
                ApplicationArea = All;
            }
        }
    }
}
