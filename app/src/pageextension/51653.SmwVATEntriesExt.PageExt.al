// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |25.02.21|#AL01   |XHT |New Field: ""Smw Cancelled Entry"".
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added new fields "Dont show in VAT Book", "External Document No."
pageextension 51653 "Smw VAT Entries Ext" extends "VAT Entries"
{
    Layout
    {
        addafter("EU Service")
        {
            field("Smw Cancelled Entry"; Rec."Smw Cancelled Entry")
            {
                ToolTip = 'Specifies the value of the Cancelled Entry field.';
                ApplicationArea = All;
            }
        }
        addlast(Control1)
        {
            field("Smw External Document No."; Rec."External Document No.")
            {
                ToolTip = 'Specifies the value of the External Document No. field.';
                ApplicationArea = All;
            }
            field("Smw Dont show in VAT Book"; Rec."Smw Dont show in VAT Book")
            {
                ToolTip = 'Specifies the value of the Don''t show in VAT Book field.';
                ApplicationArea = All;
            }
        }
    }
}
