// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added field  "Vendor Invoice No."
pageextension 51656 "Smw PostedPurch.Inv.Update Ext" extends "Posted Purch. Invoice - Update"
{
    Layout
    {
        addlast(General)
        {
            field("Smw Vendor Invoice No."; Rec."Vendor Invoice No.")
            {
                ToolTip = 'Specifies the vendor''s own invoice number.';
                ApplicationArea = All;
            }
        }
    }
}
