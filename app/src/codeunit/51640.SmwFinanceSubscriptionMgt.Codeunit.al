// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |Added new codeunit "Finance Subscription Mgt."
// ?|AL01   |AL01            |12.10.21|#AL01   |VT  |Added new Function UpdateUCDonPostedSalesInvoice
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |Added Code for codeunit 80 OnBeforeSalesCrMemoHeaderInsert.
codeunit 51640 "Smw Finance Subscription Mgt"
{
    Permissions = tabledata "VAT Entry" = rm,
                  tabledata "Purch. Inv. Header" = rm,
                  tabledata "Sales Invoice Header" = rm;

    var
        TextDel002_Qst: Label '%1 is empty, do you want to continue?', Comment = '%1=Applies-to Doc. No.';
        OperationAborted_Err: Label 'Operation Aborted.';
        TextDel003_Err: Label 'You must select an No. of exported invoice.!';

    procedure SetAppliesDocToSalesHeader(VAR pSalesHeader: Record "Sales Header")
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        PostedSalesInvoices: Page "Posted Sales Invoices";
    begin
        //#AL01.s 10.11.20
        IF pSalesHeader."Document Type" IN [pSalesHeader."Document Type"::"Credit Memo", pSalesHeader."Document Type"::"Return Order"] THEN BEGIN
            pSalesHeader.TESTFIELD("Applies-to Doc. No.", '');
            pSalesHeader.TESTFIELD("Applies-to Doc. Type", pSalesHeader."Applies-to Doc. Type"::Invoice);

            SalesInvoiceHeader.SETCURRENTKEY("Bill-to Customer No.");
            SalesInvoiceHeader.FILTERGROUP(2);
            SalesInvoiceHeader.SETRANGE("Bill-to Customer No.", pSalesHeader."Bill-to Customer No.");
            SalesInvoiceHeader.SETRANGE(Cancelled, FALSE);
            SalesInvoiceHeader.FILTERGROUP(0);
            PostedSalesInvoices.SETTABLEVIEW(SalesInvoiceHeader);
            PostedSalesInvoices.LOOKUPMODE(TRUE);
            IF PostedSalesInvoices.RUNMODAL() = ACTION::LookupOK THEN BEGIN
                PostedSalesInvoices.GETRECORD(SalesInvoiceHeader);
                pSalesHeader."Applies-to Doc. No." := SalesInvoiceHeader."No.";
                pSalesHeader."Posting No. Series" := SalesInvoiceHeader."No. Series";
                pSalesHeader."Posting No." := SalesInvoiceHeader."No.";
            END;
        END;
        //#AL01.e 10.11.20
    end;

    procedure UpdateUCDonPostedInvoice(PostedDocumentNo: Code[20]; UCDNo: Code[20])
    var
        PurchaseInvoiceHeader: Record "Purch. Inv. Header";
    begin
        //#AL01.s 10.11.20
        PurchaseInvoiceHeader.RESET();
        IF PurchaseInvoiceHeader.GET(PostedDocumentNo) THEN BEGIN
            PurchaseInvoiceHeader."Smw UCD No." := UCDNo;
            PurchaseInvoiceHeader.MODIFY(TRUE);
        END;
        //#AL01.e 10.11.20
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePostPurchaseDoc', '', false, false)]
    local procedure Cod90_OnBeforePostPurchaseDococedure(VAR PurchaseHeader: Record "Purchase Header")
    var
        TextDel001_Err: Label 'You must select an No. of Imported invoice.!';
    begin
        //#AL01.s 10.11.20
        IF PurchaseHeader."Smw Custom Account" THEN
            IF PurchaseHeader."Smw No. of Imported Invoice" = '' THEN
                ERROR(TextDel001_Err);
        //#AL01.e 10.11.20
    end;

    [EventSubscriber(ObjectType::Table, Database::"Cust. Ledger Entry", 'OnAfterCopyCustLedgerEntryFromGenJnlLine', '', false, false)]
    local procedure Table21_OnAfterCopyCustLedgerEntryFromGenJnlLine(var CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        //#AL01.s 10.11.20
        CustLedgerEntry."Smw UCD No." := GenJournalLine."Smw UCD No.";
        //#AL01.e 10.11.20
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', false, false)]
    local procedure Cod80_OnBeforePostSalesDoc(VAR SalesHeader: Record "Sales Header")
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        //#AL01.s 12.10.21
        IF SalesHeader."Smw Custom Account" THEN
            IF SalesHeader."Smw No. of Exported Invoice" = '' THEN
                ERROR(TextDel003_Err);
        //#AL01.e 12.10.21
        //#AL01.s 10.11.20
        IF SalesHeader."Document Type" IN [SalesHeader."Document Type"::"Credit Memo", SalesHeader."Document Type"::"Return Order"] THEN BEGIN
            IF SalesHeader."Applies-to Doc. No." = '' THEN
                IF GUIALLOWED THEN
                    IF NOT CONFIRM(TextDel002_Qst, FALSE, SalesHeader.FIELDCAPTION("Applies-to Doc. No.")) THEN
                        ERROR(OperationAborted_Err);

            IF SalesHeader."Applies-to Doc. No." <> '' THEN
                IF (SalesHeader."Applies-to Doc. Type" = SalesHeader."Applies-to Doc. Type"::Invoice) THEN
                    IF SalesInvoiceHeader.GET(SalesHeader."Applies-to Doc. No.") THEN BEGIN
                        SalesInvoiceHeader.TESTFIELD("Cancelled", FALSE);
                        SalesHeader."Posting No. Series" := SalesInvoiceHeader."No. Series";
                        SalesHeader."Posting No." := SalesInvoiceHeader."No.";
                    END;
        END;
        //#AL01.e 10.11.20
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', false, false)]
    local procedure Cod80_OnAfterPostSalesDoc(VAR SalesHeader: Record "Sales Header"; VAR GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; SalesShptHdrNo: Code[20]; RetRcpHdrNo: Code[20]; SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20])
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SmwCancelledDocument: Record "Cancelled Document";
        VatEntry: Record "VAT Entry";
    begin
        //#AL01.s 10.11.20
        IF SalesHeader."Document Type" IN [SalesHeader."Document Type"::"Credit Memo", SalesHeader."Document Type"::"Return Order"] THEN
            IF (SalesHeader."Applies-to Doc. No." <> '') AND (SalesCrMemoHdrNo <> '') THEN
                IF (SalesHeader."Applies-to Doc. Type" = SalesHeader."Applies-to Doc. Type"::Invoice) THEN
                    IF SalesInvoiceHeader.GET(SalesHeader."Applies-to Doc. No.") THEN BEGIN
                        SalesCrMemoHeader.GET(SalesCrMemoHdrNo);
                        SmwCancelledDocument.InsertSalesInvToCrMemoCancelledDocument(SalesInvoiceHeader."No.", SalesCrMemoHeader."No.");
                        VatEntry.SETRANGE(Type, VatEntry.Type::Sale);
                        VatEntry.SETRANGE("Document Type", VatEntry."Document Type"::Invoice);
                        VatEntry.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                        VatEntry.MODIFYALL("Smw Cancelled Entry", TRUE);
                        VatEntry.RESET();
                        VatEntry.SETRANGE(Type, VatEntry.Type::Sale);
                        VatEntry.SETRANGE("Document Type", VatEntry."Document Type"::"Credit Memo");
                        VatEntry.SETRANGE("Document No.", SalesCrMemoHeader."No.");
                        VatEntry.MODIFYALL("Smw Cancelled Entry", TRUE);
                    END;
        //#AL01.e 10.11.20
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Applies-to Doc. Type', false, false)]
    local procedure Table36_OnAfterValidateEventAppliesToDocType(VAR Rec: Record "Sales Header"; VAR xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
        NoSeriesManagement: Codeunit "NoSeriesManagement";
    begin
        //#AL01.s 10.11.20
        IF Rec."Document Type" IN [Rec."Document Type"::"Credit Memo", Rec."Document Type"::"Return Order"] THEN
            IF (Rec."Applies-to Doc. Type" <> xRec."Applies-to Doc. Type") THEN
                IF (xRec."Applies-to Doc. Type" = xRec."Applies-to Doc. Type"::Invoice) AND (Rec."Applies-to Doc. No." <> '') THEN BEGIN
                    Rec."Applies-to Doc. No." := '';
                    SalesReceivablesSetup.GET();
                    NoSeriesManagement.SetDefaultSeries(Rec."Posting No. Series", SalesReceivablesSetup."Posted Invoice Nos.");
                    Rec."Posting No." := '';
                END;
        //#AL01.e 10.11.20
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Applies-to Doc. No.', false, false)]
    local procedure Table36_OnAfterValidateEventAppliesToDocNo(VAR Rec: Record "Sales Header"; VAR xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
        NoSeriesManagement: Codeunit "NoSeriesManagement";
    begin
        //#AL01.s 10.11.20
        IF Rec."Document Type" IN [Rec."Document Type"::"Credit Memo", Rec."Document Type"::"Return Order"] THEN
            IF (Rec."Applies-to Doc. No." <> xRec."Applies-to Doc. No.") THEN
                IF (Rec."Applies-to Doc. Type" = Rec."Applies-to Doc. Type"::Invoice) AND (Rec."Applies-to Doc. No." = '') THEN BEGIN
                    SalesReceivablesSetup.GET();
                    NoSeriesManagement.SetDefaultSeries(Rec."Posting No. Series", SalesReceivablesSetup."Posted Invoice Nos.");
                    Rec."Posting No." := '';
                END ELSE
                    IF SalesInvoiceHeader.GET(Rec."Applies-to Doc. No.") THEN BEGIN
                        SalesInvoiceHeader.TESTFIELD("Cancelled", FALSE);
                        Rec."Posting No. Series" := SalesInvoiceHeader."No. Series";
                        Rec."Posting No." := SalesInvoiceHeader."No.";
                    END;
        //#AL01.e 10.11.20
    end;

    procedure UpdateUCDonPostedSalesInvoice(PostedSalesDocumentNo: Code[20]; UCDNo: Code[20])
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        //#AL01.s 12.11.21
        SalesInvoiceHeader.RESET();
        IF SalesInvoiceHeader.GET(PostedSalesDocumentNo) THEN BEGIN
            SalesInvoiceHeader."Smw UCD No." := UCDNo;
            SalesInvoiceHeader.MODIFY(TRUE);
        END;
        //#AL01.e 12.10.21
    end;

    [EventSubscriber(ObjectType::Table, Database::"VAT Entry", 'OnAfterCopyFromGenJnlLine', '', false, false)]
    local procedure Table36_OnAfterCopyFromGenJnlLine(var VATEntry: Record "VAT Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        //#AL01.s 10.11.20
        VATEntry."Smw UCD No." := GenJournalLine."Smw UCD No.";
        VATEntry."Smw Global Dimension 1 Code" := GenJournalLine."Shortcut Dimension 1 Code";
        VATEntry."Smw Global Dimension 2 Code" := GenJournalLine."Shortcut Dimension 2 Code";
        VATEntry."Smw No. of Imported Invoice" := GenJournalLine."Smw No. of Imported Invoice";
        VATEntry."Smw No. of Exported Invoice" := GenJournalLine."Smw No. of Exported Invoice"; //#AL01.s 12.10.21
        VATEntry."Smw Dont show in VAT Book" := GenJournalLine."Smw Don't show in VAT Book";
        VATEntry."Smw Custom Account" := GenJournalLine."Smw Custom Account";
        //#AL01.e 10.11.20
    end;

    //#KS01.s 10.06.22
    [EventSubscriber(ObjectType::Page, Page::"Posted Purch. Invoice - Update", 'OnAfterRecordChanged', '', false, false)]
    local procedure Page1351_OnAfterRecordChanged(var PurchInvHeader: Record "Purch. Inv. Header"; xPurchInvHeader: Record "Purch. Inv. Header"; var IsChanged: Boolean)
    begin
        IsChanged := IsChanged Or
            (PurchInvHeader."Vendor Invoice No." <> xPurchInvHeader."Vendor Invoice No.");
    end;
    //#KS01.e 10.06.22

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeSalesCrMemoHeaderInsert', '', false, false)]
    local procedure Cod80_OnBeforeSalesCrMemoHeaderInsert(var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean; var IsHandled: Boolean)
    begin
        ///#KS01.s 10.06.22
        SalesCrMemoHeader."Smw Shipping Agent Code" := SalesHeader."Shipping Agent Code";
        //#KS01.e 10.06.22
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromPurchHeader', '', false, false)]
    local procedure Table21_OnAfterCopyGenJnlLineFromPurchHeader(PurchaseHeader: Record "Purchase Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        //#KS01.s 10.06.22
        GenJournalLine.SmwCopyFromPurchHeader(PurchaseHeader);
        //#KS01.e 10.06.22
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromPurchHeaderPrepmt', '', false, false)]
    local procedure Table21_OnAfterCopyGenJnlLineFromPurchHeaderPrepmt(PurchaseHeader: Record "Purchase Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        //#KS01.s 10.06.22
        GenJournalLine.SmwCopyFromPurchHeader(PurchaseHeader);
        //#KS01.e 10.06.22
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromPurchHeaderPrepmtPost', '', false, false)]
    local procedure Table21_OnAfterCopyGenJnlLineFromPurchHeaderPrepmtPost(PurchaseHeader: Record "Purchase Header"; var GenJournalLine: Record "Gen. Journal Line"; UsePmtDisc: Boolean)
    begin
        //#KS01.s 10.06.22
        GenJournalLine.SmwCopyFromPurchHeader(PurchaseHeader);
        //#KS01.e 10.06.22
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromPurchHeaderApplyTo', '', false, false)]
    local procedure Table21_OnAfterCopyGenJnlLineFromPurchHeaderApplyTo(PurchaseHeader: Record "Purchase Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        //#KS01.s 10.06.22
        GenJournalLine.SmwCopyFromPurchHeader(PurchaseHeader);
        //#KS01.e 10.06.22
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromPurchHeaderPayment', '', false, false)]
    local procedure Table21_OnAfterCopyGenJnlLineFromPurchHeaderPayment(PurchaseHeader: Record "Purchase Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        //#KS01.s 10.06.22
        GenJournalLine.SmwCopyFromPurchHeader(PurchaseHeader);
        //#KS01.e 10.06.22
    end;
}
