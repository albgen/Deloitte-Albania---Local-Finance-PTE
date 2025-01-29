// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Field "Fiscal No", "Dpt. Code", "	Dpt. Issue Date	Date", "Plate No."

tableextension 51646 "Smw Company Information Ext" extends "Company Information"
{
    fields
    {
        field(51640; "Smw Fiscal No."; Text[20])
        {
            Description = 'Fiscal number for client. This field is needed on sales invoice and Sales book - AL01';
            Caption = 'Fiscal No.';
            DataClassification = CustomerContent;
        }
        field(51641; "Smw Dpt. Code"; Text[30])
        {
            Description = 'Is used on Sales Invoice print reports - AL01';
            Caption = 'Dpt. Code';
            DataClassification = CustomerContent;
        }
        field(51642; "Smw Dpt. Issue Date"; Date)
        {
            Description = 'Is used on Sales Invoice print reports - AL01';
            Caption = 'Dpt. Issue Date';
            DataClassification = CustomerContent;
        }
        field(51643; "Smw Plate No."; Text[50])
        {
            Description = 'Plate No. - AL01';
            Caption = 'Plate No.';
            DataClassification = CustomerContent;
        }
    }
}
