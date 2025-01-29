// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Fields: "UCD No.", "No. of Imported Invoice"

tableextension 51645 "Smw Purchase Line Ext" extends "Purchase Line"
{
    fields
    {
        field(51640; "Smw UCD No."; Code[20])
        {
            Description = 'AL01 - UCD No. from purchase header';
            Caption = 'UCD No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                // IF "Invoice No." <> '' THEN
                //   ERROR(Text052);
            end;
        }
        field(51641; "Smw No. of Imported Invoice"; Code[20])
        {
            Description = 'AL01 - No. of iporte invoice from Header. This field is used by page "Item Charge Assignment (Purch)" when geting purchase recipt to assign charge amounts.';
            Caption = 'No. of Imported Invoice';
            TableRelation = "Purch. Inv. Header"."No.";
            DataClassification = CustomerContent;
        }
    }
}
