// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Fields: "Plate No.", "Vat Registartion No.", "Address".

tableextension 51656 "Smw Shipping Agent Ext" extends "Shipping Agent"
{
    fields
    {
        field(51640; "Smw Plate No."; text[50])
        {
            Description = 'AL01 - Plate No.';
            Caption = 'Plate No.';
            DataClassification = CustomerContent;
        }
        field(51641; "Smw VAT Registration No."; text[50])
        {
            Description = 'AL01 - VAT Registration No.';
            Caption = 'VAT Registration No.';
            DataClassification = CustomerContent;
        }
        field(51642; "Smw Address"; text[250])
        {
            Description = 'AL01 - Address';
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
    }
}
