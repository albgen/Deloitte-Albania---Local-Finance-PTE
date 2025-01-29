// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |03.06.21|#AL01   |VT  |New Function: SmwGetlastNoUsed

tableextension 51657 "Smw No. Series Ext" extends "No. Series"
{
    fields
    {
    }

    procedure SmwGetlastNoUsed(VAR LastNoUsed: Code[20])
    var
        NoSeriesLine: Record "No. Series Line";
    begin
        SmwFindNoSeriesLineToShow(NoSeriesLine);
        IF NOT NoSeriesLine.FIND('-') THEN
            NoSeriesLine.INIT();
        LastNoUsed := NoSeriesLine."Last No. Used";
    end;

    local procedure SmwFindNoSeriesLineToShow(var NoSeriesLine: Record "No. Series Line")
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        NoSeriesMgt.SetNoSeriesLineFilter(NoSeriesLine, Code, 0D);

        if NoSeriesLine.FindLast() then
            exit;

        NoSeriesLine.Reset();
        NoSeriesLine.SetRange("Series Code", Code);
    end;
}
