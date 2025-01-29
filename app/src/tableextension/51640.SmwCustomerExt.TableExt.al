// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Field "Fiscal No", "Business No.", "Long Description"
// ?|AL01   |AL01            |12.10.21|#AL01   |VT  |New Field "Custom Account".
tableextension 51640 "Smw Customer Ext" extends Customer
{
    fields
    {
        field(51640; "Smw Fiscal No."; Text[20])
        {
            Caption = 'Fiscal No.';
            Description = 'Fiscal number for client. This field is needed on sales invoice and Sales book';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                // #AL01.s 10.11.20 XHT
                SmwCheckCustFiscalNo("Smw Fiscal No.", "No.");
                // #AL01.e 10.11.20 XHT
            end;
        }
        field(51641; "Smw Business No."; Text[20])
        {
            Caption = 'Business No.';
            Description = 'Bussines No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                // #AL01.s 10.11.20 XHT
                SmwCheckCustBusRegNo("Smw Business No.", "No.");
                // #AL01.e 10.11.20 XHT
            end;
        }
        field(51642; "Smw Long Description"; Text[100])
        {
            Caption = 'Long Description';
            Description = 'Long description up to 100 characters';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                IF Name = '' THEN
                    Name := COPYSTR("Smw Long Description", 1, 50);
            end;
        }
        field(51643; "Smw Custom Account"; Boolean)
        {
            Caption = 'Custom Account';
            Description = 'Indicate if customer is used for transactions about customs.';
            DataClassification = CustomerContent;
        }
    }

    var
        Cust: Record Customer;
        Check: Boolean;
        Finish: Boolean;
        t: Text;
        AlText001_Qst: label 'This Fiscal Number has already been entered for the following customers:\ %1\ \Do you want to keep changes?', Comment = '%1=Customer Codes';
        AlText002_Qst: label 'This Business Number has already been entered for the following customers:\ %1\ \Do you want to keep changes?', Comment = '%1=Customer Codes';

    local procedure SmwCheckCustFiscalNo(FiscalNo: Text[20]; Number: Code[20])
    begin
        // #AL01.s 10.11.20 XHT
        IF FiscalNo = '' THEN
            EXIT;

        Check := TRUE;
        Finish := false;
        t := '';
        Clear(Cust);

        Cust.SETCURRENTKEY("Smw Fiscal No.");
        Cust.SETRANGE("Smw Fiscal No.", FiscalNo);
        Cust.SETFILTER("No.", '<>%1', Number);
        IF Cust.FIND('-') THEN BEGIN
            Check := FALSE;
            Finish := FALSE;
            REPEAT
                IF Cust."No." <> Number THEN
                    IF t = '' THEN
                        t := Cust."No."
                    ELSE
                        IF STRLEN(t) + STRLEN(Cust."No.") + 5 <= MAXSTRLEN(t) THEN
                            t := t + ', ' + Cust."No."
                        ELSE BEGIN
                            t := t + '...';
                            Finish := TRUE;
                        END;
            UNTIL (Cust.NEXT() = 0) OR Finish;
        END;
        IF Check = FALSE THEN
            IF NOT CONFIRM(STRSUBSTNO(AlText001_Qst, t), FALSE) THEN
                "Smw Fiscal No." := xRec."Smw Fiscal No.";
        // #AL01.e 10.11.20 XHT
    end;

    local procedure SmwCheckCustBusRegNo(BusRegNo: Text[20]; Number: Code[20])
    begin
        // #AL01.s 10.11.20 XHT
        IF BusRegNo = '' THEN
            EXIT;

        Check := TRUE;
        Finish := false;
        t := '';
        Clear(Cust);

        Cust.SETCURRENTKEY("Smw Business No.");
        Cust.SETRANGE("Smw Business No.", BusRegNo);
        Cust.SETFILTER("No.", '<>%1', Number);
        IF Cust.FIND('-') THEN BEGIN
            Check := FALSE;
            Finish := FALSE;
            REPEAT
                IF Cust."No." <> Number THEN
                    IF t = '' THEN
                        t := Cust."No."
                    ELSE
                        IF STRLEN(t) + STRLEN(Cust."No.") + 5 <= MAXSTRLEN(t) THEN
                            t := t + ', ' + Cust."No."
                        ELSE BEGIN
                            t := t + '...';
                            Finish := TRUE;
                        END;
            UNTIL (Cust.NEXT() = 0) OR Finish;
        END;
        IF Check = FALSE THEN
            IF NOT CONFIRM(STRSUBSTNO(AlText002_Qst, t), FALSE) THEN
                "Smw Business No." := xRec."Smw Business No.";
        // #AL01.e 10.11.20 XHT
    end;
}
