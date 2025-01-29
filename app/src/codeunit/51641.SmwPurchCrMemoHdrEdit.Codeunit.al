// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Allow to update  ""Vendor Cr. Memo No.""
codeunit 51641 "Smw Purch. Cr.Memo Hdr. - Edit"
{
    Permissions = TableData "Purch. Cr. Memo Hdr." = rm;
    TableNo = "Purch. Cr. Memo Hdr.";

    trigger OnRun()
    var
        PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
    begin
        PurchCrMemoHeader := Rec;
        PurchCrMemoHeader.LockTable();
        PurchCrMemoHeader.Find();
        PurchCrMemoHeader."Payment Method Code" := Rec."Payment Method Code";
        PurchCrMemoHeader."Ship-to Code" := Rec."Ship-to Code";
        OnBeforePurchCrMemoHeaderModify(PurchCrMemoHeader, Rec);
        PurchCrMemoHeader.TestField("No.", Rec."No.");
        PurchCrMemoHeader.Modify();
        Rec := PurchCrMemoHeader;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforePurchCrMemoHeaderModify(var PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr."; PurchCrMemoHeaderRec: Record "Purch. Cr. Memo Hdr.")
    begin
    end;
}
