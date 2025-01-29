// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Added field "Smw Purchase Book Code"

tableextension 51660 "Smw Purch&ReceivablesSetup Ext" extends "Purchases & Payables Setup"
{
    fields
    {
        field(51640; "Smw Purchase Book Code"; code[20])
        {
            caption = 'Purchase Book Code';
            TableRelation = "Smw Vat Book Code".Code;
            Description = '#KS01';
            DataClassification = CustomerContent;
        }
    }
}
