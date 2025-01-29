// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added field "Smw Purchase Book Code"
pageextension 51659 "Smw Purch&ReceivablesSetup Ext" extends "Purchases & Payables Setup"
{
    Layout
    {
        addlast(General)
        {
            field("Smw Purchase Book Code"; Rec."Smw Purchase Book Code")
            {
                ToolTip = 'Specifies the value of the Purchase Book Code field.';
                ApplicationArea = All;
            }
        }
    }
}
