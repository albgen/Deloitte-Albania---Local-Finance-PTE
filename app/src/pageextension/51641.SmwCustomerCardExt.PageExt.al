// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |12.10.21|#AL01   |VT  |New group "Exports"
pageextension 51641 "Smw Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            group("Smw Exports")
            {
                field("Smw Custom Account"; Rec."Smw Custom Account")
                {
                    ToolTip = 'Specifies the value of the Custom Account field.';
                    ApplicationArea = All;
                }
                field("Smw Fiscal No."; Rec."Smw Fiscal No.")
                {
                    ToolTip = 'Specifies the value of the Fiscal No. field.';
                    ApplicationArea = All;
                }
                field("Smw Business No."; Rec."Smw Business No.")
                {
                    ToolTip = 'Specifies the value of the Business No. field.';
                    ApplicationArea = All;
                }
                field("Smw Long Description"; Rec."Smw Long Description")
                {
                    ToolTip = 'Specifies the value of the Long Description field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
