// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added field "Smw Sales Book Code"
pageextension 51658 "Smw Sales&ReceivablesSetup Ext" extends "Sales & Receivables Setup"
{
    Layout
    {
        addlast(General)
        {
            field("Smw Sales Book Code"; Rec."Smw Sales Book Code")
            {
                ToolTip = 'Specifies the value of the Sales Book Code field.';
                ApplicationArea = All;
            }
        }
    }
}
