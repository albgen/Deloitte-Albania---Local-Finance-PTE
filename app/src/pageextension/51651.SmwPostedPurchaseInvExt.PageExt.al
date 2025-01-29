// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
//  |AL01   |AL01            |11.12.20|#AL01   |SK  |Added Reason Code in general Tab
//  |AL01   |AL01            |03.06.21|#AL01   |VT  |Added "Bill No" field in general Tab
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added field "Dont Show in VAT Book"
// /|                                          |XHT |Changed property "Editable" to allow edition on field "Vendor Invoice No."
pageextension 51651 "Smw Posted Purchase Inv. Ext" extends "Posted Purchase Invoice"
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
            field("Smw Dont show in VAT Book"; Rec."Smw Dont show in VAT Book")
            {
                ToolTip = 'Specifies the value of the Don''t show in VAT Book field.';
                ApplicationArea = All;
            }
        }
    }
}
