// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New group "Imports"
pageextension 51642 "Smw Vendor Card Ext" extends "Vendor Card"
{
    layout
    {
        addlast(Contact)
        {
            group("Smw Imports")
            {
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
                field("Smw Custom Account"; Rec."Smw Custom Account")
                {
                    ToolTip = 'Specifies the value of the Custom Account field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
