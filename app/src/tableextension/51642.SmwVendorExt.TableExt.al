// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New Field "Fiscal No", "Business No.", "Long Description", "Custom Account"
tableextension 51642 "SmwVendorExt" extends Vendor
{
    fields
    {
        field(51640; "Smw Fiscal No."; Text[10])
        {
            Description = 'Fiscal number for client. This field is needed on purchasse book';
            Caption = 'Fiscal No.';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
            begin
                // #AL01.s 10.11.20 XHT
                SmwCheckVendorFiscalNo("Smw Fiscal No.", "No.");
                // #AL01.e 10.11.20 XHT
            end;
        }
        field(51641; "Smw Business No."; Text[10])
        {
            Description = 'Bussines No.';
            Caption = 'Business No.';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
            begin
                // #AL01.s 10.11.20 XHT
                SmwCheckVendorBusRegNo("Smw Business No.", "No.");
                // #AL01.e 10.11.20 XHT
            end;
        }
        field(51642; "Smw Long Description"; Text[100])
        {
            Description = 'Long description up to 100 characters';
            Caption = 'Long Description';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
            begin
                IF Name = '' THEN
                    Name := COPYSTR("Smw Long Description", 1, 50);
            end;
        }
        field(51643; "Smw Custom Account"; Boolean)  // id ne nav e ka 516403
        {
            Description = 'Indicate if vendor is used for transactions about customs.';
            Caption = 'Custom Account';
            DataClassification = CustomerContent;
        }
    }
    procedure SmwCheckVendorFiscalNo(FiscalNo: Text[20]; Number: Code[20])
    var
        Vend: Record Vendor;
        Check: Boolean;
        Finish: Boolean;
        t: Text;
    begin
        // #Al01.s 10.11.20 XHT
        IF FiscalNo = '' THEN
            EXIT;
        Check := TRUE;
        t := '';
        Vend.SETCURRENTKEY("Smw Fiscal No.");
        Vend.SETRANGE("Smw Fiscal No.", FiscalNo);
        Vend.SETFILTER("No.", '<>%1', Number);
        IF Vend.FIND('-') THEN BEGIN
            Check := FALSE;
            Finish := FALSE;
            REPEAT
                IF Vend."No." <> Number THEN
                    IF t = '' THEN
                        t := Vend."No."
                    ELSE
                        IF STRLEN(t) + STRLEN(Vend."No.") + 5 <= MAXSTRLEN(t) THEN
                            t := t + ', ' + Vend."No."
                        ELSE BEGIN
                            t := t + '...';
                            Finish := TRUE;
                        END;
            UNTIL (Vend.NEXT() = 0) OR Finish;
        END;
        IF Check = FALSE THEN
            IF NOT CONFIRM(STRSUBSTNO(AlText001_Qst, t), FALSE) THEN
                "Smw Fiscal No." := xRec."Smw Fiscal No.";
        // #Al01.e 10.11.20 XHT
    end;

    procedure SmwCheckVendorBusRegNo(BusRegNo: Text[20]; Number: Code[20])
    var
        Vend: Record Vendor;
        Check: Boolean;
        Finish: Boolean;
        t: Text;
    begin
        // #Al01.s 10.11.20 XHT
        IF BusRegNo = '' THEN
            EXIT;
        Check := TRUE;
        t := '';
        Vend.SETCURRENTKEY("Smw Business No.");
        Vend.SETRANGE("Smw Business No.", BusRegNo);
        Vend.SETFILTER("No.", '<>%1', Number);
        IF Vend.FIND('-') THEN BEGIN
            Check := FALSE;
            Finish := FALSE;
            REPEAT
                IF Vend."No." <> Number THEN
                    IF t = '' THEN
                        t := Vend."No."
                    ELSE
                        IF STRLEN(t) + STRLEN(Vend."No.") + 5 <= MAXSTRLEN(t) THEN
                            t := t + ', ' + Vend."No."
                        ELSE BEGIN
                            t := t + '...';
                            Finish := TRUE;
                        END;
            UNTIL (Vend.NEXT() = 0) OR Finish;
        END;
        IF Check = FALSE THEN
            IF NOT CONFIRM(STRSUBSTNO(AlText002_Qst, t), FALSE) THEN
                "Smw Business No." := xRec."Smw Business No.";
        // #Al01.e 10.11.20 XHT
    end;

    var
        AlText001_Qst: label 'This Fiscal Number has already been entered for the following vendors:\ %1\ \Do you want to keep changes?', Comment = '%1=Vendor Codes';
        AlText002_Qst: label 'This Business Number has already been entered for the following vendors:\ %1\ \Do you want to keep changes?', Comment = '%1=Vendor Codes';
}
