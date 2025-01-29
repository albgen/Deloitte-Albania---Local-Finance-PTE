// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added field "Smw Sales Book Code"

tableextension 51659 "Smw Sales&ReceivablesSetup Ext" extends "Sales & Receivables Setup"
{
    fields
    {
        field(51640; "Smw Sales Book Code"; code[20])
        {
            caption = 'Sales Book Code';
            TableRelation = "Smw Vat Book Code".Code;
            Description = '#KS01';
            DataClassification = CustomerContent;
        }
    }
}
