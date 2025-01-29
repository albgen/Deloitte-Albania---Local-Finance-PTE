// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New group "Imports"
//---------------------------------------------------------------------------------------------
//  |AL01   |AL01            |11.12.20|#AL01   |SK  |Added Reason Code in general Tab
//  |AL01   |AL01            |03.06.21|#AL01   |VT  |Added "Bill No" field in general Tab
pageextension 51647 "Smw Purchase Invoice Ext" extends "Purchase Invoice"
{
    Layout
    {
        addlast(General)
        {
            field("Smw Bill No."; Rec."Smw Bill No.")
            {
                ToolTip = 'Specifies the value of the Bill No. field.';
                ApplicationArea = All;
            }
            field("Smw Reason Code"; Rec."Reason Code")
            {
                ToolTip = 'Specifies the reason code, a supplementary source code that enables you to trace the document.';
                ApplicationArea = All;
            }
        }
    }
}
