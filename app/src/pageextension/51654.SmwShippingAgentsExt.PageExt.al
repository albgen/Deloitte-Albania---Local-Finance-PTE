// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Fields: "Plate No.", "Vat Registartion No.", "Address".
pageextension 51654 "Smw Shipping Agents Ext" extends "Shipping Agents"
{
    layout
    {
        addafter("Account No.")
        {
            field("Smw Address"; Rec."Smw Address")
            {
                ToolTip = 'Specifies the value of the Address field.';
                ApplicationArea = All;
            }
            field("Smw Plate No."; Rec."Smw Plate No.")
            {
                ToolTip = 'Specifies the value of the Plate No. field.';
                ApplicationArea = All;
            }
            field("Smw VAT Registration No."; Rec."Smw VAT Registration No.")
            {
                ToolTip = 'Specifies the value of the VAT Registration No. field.';
                ApplicationArea = All;
            }
        }
    }
}
