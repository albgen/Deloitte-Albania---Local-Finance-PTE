// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New group "Deloitte Albania"
// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New group "Deloitte Albania"
pageextension 51640 "Smw Company Information Ext" extends "Company Information"
{
    layout
    {
        addlast(General)
        {
            group("Smw Deloitte Albania")
            {
                field("Smw Fiscal No."; Rec."Smw Fiscal No.")
                {
                    ToolTip = 'Specifies the value of the Fiscal No. field.';
                    ApplicationArea = All;
                }
                field("Smw Dpt. Code"; Rec."Smw Dpt. Code")
                {
                    ToolTip = 'Specifies the value of the Dpt. Code field.';
                    ApplicationArea = All;
                }
                field("Smw Dpt. Issue Date"; Rec."Smw Dpt. Issue Date")
                {
                    ToolTip = 'Specifies the value of the Dpt. Issue Date field.';
                    ApplicationArea = All;
                }
                field("Smw Plate No."; Rec."Smw Plate No.")
                {
                    ToolTip = 'Specifies the value of the Dpt. Issue Date field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
