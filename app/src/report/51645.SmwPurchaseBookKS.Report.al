report 51645 "Smw Purchase Book KS"
{
    // // Smartwork Sh.P.K
    // // -------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // // T           = Line Type: ? = Modification line on Development Request
    // // / = Comment on intervention
    // // -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
    // // T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
    // // -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
    // // ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New report "Sales Book"
    DefaultLayout = RDLC;
    RDLCLayout = './src/Layout/51645.SmwPurchaseBookKS.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    PreviewMode = PrintLayout;
    Caption = 'Purchase Book - Kosova';

    dataset
    {
        dataitem("VAT Entry"; "VAT Entry")
        {
            DataItemTableView = SORTING("Document No.") ORDER(Ascending) WHERE(Type = FILTER(Purchase | Sale), "Document Type" = FILTER(<> " " & <> Payment), "Smw Dont show in VAT Book" = CONST(false));
            RequestFilterFields = "Document Date", "Document No.", "Bill-to/Pay-to No.", "Smw Global Dimension 1 Code";
            column(Company_Name; CompanyInfo.Name)
            {
                IncludeCaption = true;
            }
            column(Company_Address; CompanyInfo.Address)
            {
            }
            column(Company_Fiscal_No; CompanyInfo."Smw Fiscal No.")
            {
            }
            column(Company_VAT_Registration_No; CompanyInfo."VAT Registration No.")
            {
            }
            column(Document_date; Format(DateToDisplay, 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(Document_No; "VAT Entry"."Document No.")
            {
            }
            column(External_Document_No; ExternalDocumentNo)
            {
            }
            column(SourceName; SourceName)
            {
            }
            column(SourceFiscalNo; SourceFiscalNo)
            {
            }
            column(SourceVAT; SourceVAT)
            {
            }
            column(SourceCity; SourceCity)
            {
            }
            column(Bill_Caption; Bill_CaptionLbl)
            {
            }
            column(Seller_Caption; Seller_CaptionLbl)
            {
            }
            column(PurchasesAndImportsExemptAndWithNonDeductibleVAT_Caption; PurchasesAndImportsExemptAndWithNonDeductibleVATLbl)
            {
            }
            column(PurchasesAndImportsTaxable18DiscountArrangements_Caption; PurchasesAndImportsTaxable18DiscountArrangementsLbl)
            {
            }
            column(PurchasesAndImportsTaxable8DiscountArrangements_Caption; PurchasesAndImportsTaxable8DiscountArrangementsLbl)
            {
            }
            column(No_Caption; No_CaptionLbl)
            {
            }
            column(Serial_No_Caption; Serial_No_CaptionLbl)
            {
            }
            column(Date_Caption; Date_CaptionLbl)
            {
            }
            column(Trade_name_person_Caption; Trade_name_person_CaptionLbl)
            {
            }
            column(Fiscal_No_Caption; Fiscal_No_CaptionLbl)
            {
            }
            column(Vat_Registration_No_Caption; Vat_Registration_No_CaptionLbl)
            {
            }
            column(Box_according_to_VAT_Caption; Box_according_to_VAT_CaptionLbl)
            {
            }
            column(NoOfColumns; NoOfColumns)
            {
            }
            column(DateToDisplay; Format(DateToDisplay, 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(Field_Codes_Caption_1_4; Field_Codes_Caption[1] [4])
            {
            }
            column(Field_Codes_Caption_2_4; Field_Codes_Caption[2] [4])
            {
            }
            column(Field_Codes_Caption_3_4; Field_Codes_Caption[3] [4])
            {
            }
            column(Field_Codes_Caption_4_4; Field_Codes_Caption[4] [4])
            {
            }
            column(Field_Codes_Caption_5_4; Field_Codes_Caption[5] [4])
            {
            }
            column(Field_Codes_Caption_6_4; Field_Codes_Caption[6] [4])
            {
            }
            column(Field_Codes_Caption_7_4; Field_Codes_Caption[7] [4])
            {
            }
            column(Field_Codes_Caption_8_4; Field_Codes_Caption[8] [4])
            {
            }
            column(Field_Codes_Caption_9_4; Field_Codes_Caption[9] [4])
            {
            }
            column(Field_Codes_Caption_10_4; Field_Codes_Caption[10] [4])
            {
            }
            column(Field_Codes_Caption_11_4; Field_Codes_Caption[11] [4])
            {
            }
            column(Field_Codes_Caption_12_4; Field_Codes_Caption[12] [4])
            {
            }
            column(Field_Codes_Caption_13_4; Field_Codes_Caption[13] [4])
            {
            }
            column(Field_Codes_Caption_14_4; Field_Codes_Caption[14] [4])
            {
            }
            column(Field_Codes_Caption_15_4; Field_Codes_Caption[15] [4])
            {
            }
            column(Field_Codes_Caption_16_4; Field_Codes_Caption[16] [4])
            {
            }
            column(Field_Codes_Caption_17_4; Field_Codes_Caption[17] [4])
            {
            }
            column(Field_Codes_Caption_18_4; Field_Codes_Caption[18] [4])
            {
            }
            column(Field_Codes_Caption_19_4; Field_Codes_Caption[19] [4])
            {
            }
            column(Field_Codes_Caption_20_4; Field_Codes_Caption[20] [4])
            {
            }
            column(Field_Codes_Caption_21_4; Field_Codes_Caption[21] [4])
            {
            }
            column(Field_Codes_Caption_22_4; Field_Codes_Caption[22] [4])
            {
            }
            column(Field_Codes_Caption_23_4; Field_Codes_Caption[23] [4])
            {
            }
            column(Cell_Value_1; CellValue[1])
            {
            }
            column(Cell_Value_2; CellValue[2])
            {
            }
            column(Cell_Value_3; CellValue[3])
            {
            }
            column(Cell_Value_4; CellValue[4])
            {
            }
            column(Cell_Value_5; CellValue[5])
            {
            }
            column(Cell_Value_6; CellValue[6])
            {
            }
            column(Cell_Value_7; CellValue[7])
            {
            }
            column(Cell_Value_8; CellValue[8])
            {
            }
            column(Cell_Value_9; CellValue[9])
            {
            }
            column(Cell_Value_10; CellValue[10])
            {
            }
            column(Cell_Value_11; CellValue[11])
            {
            }
            column(Cell_Value_12; CellValue[12])
            {
            }
            column(Cell_Value_13; CellValue[13])
            {
            }
            column(Cell_Value_14; CellValue[14])
            {
            }
            column(Cell_Value_15; CellValue[15])
            {
            }
            column(Cell_Value_16; CellValue[16])
            {
            }
            column(Cell_Value_17; CellValue[17])
            {
            }
            column(Cell_Value_18; CellValue[18])
            {
            }
            column(Cell_Value_19; CellValue[19])
            {
            }
            column(Cell_Value_20; CellValue[20])
            {
            }
            column(Cell_Value_21; CellValue[21])
            {
            }
            column(Cell_Value_22; CellValue[22])
            {
            }
            column(Cell_Value_23; CellValue[23])
            {
            }
            column(SkipBlankRecord; SkiRecord)
            {
            }

            trigger OnAfterGetRecord()
            var
                VendorNoToDispaly: Code[20];
            begin
                SourceName := '';
                SourceVAT := '';
                SourceCity := '';
                SourceFiscalNo := '';
                Clear(CellValue);

                //Will not show sales invoice if Vat calculation type is different from "Reverse Charge VAT".
                //This invoices will show on Sales Book.
                //If Vat calculation type is equal to "Reverse Charge VAT", than theese Sales invoices will appear on purchase book.
                if ("VAT Entry"."VAT Calculation Type" <> "VAT Entry"."VAT Calculation Type"::"Reverse Charge VAT") then begin
                    if ("VAT Entry".Type = "VAT Entry".Type::Sale) and ("Document Type" = "Document Type"::Invoice) then
                        if SkipSalesInv then begin
                            NoOfRecords := NoOfRecords - 1;
                            //DocumentNoLast := '';
                            CurrReport.Skip();
                        end;

                    if ("VAT Entry".Type = "VAT Entry".Type::Sale) and ("Document Type" = "Document Type"::"Credit Memo") then
                        if SkipSalesCrMemo then begin
                            NoOfRecords := NoOfRecords - 1;
                            //DocumentNoLast := '';
                            CurrReport.Skip();
                        end;
                end;

                if ShowBy = ShowBy::"Document Date" then
                    DateToDisplay := "VAT Entry"."Document Date"
                else
                    DateToDisplay := "VAT Entry"."Posting Date";

                if "External Document No." <> '' then
                    ExternalDocumentNo := "External Document No."
                else
                    ExternalDocumentNo := '--i--';

                TempVatEntryRecTemp.Reset();
                TempVatEntryRecTemp.DeleteAll();
                Clear(TempVatEntryRecTemp);
                TempVatEntryRecTemp.Copy("VAT Entry");
                TempVatEntryRecTemp.Insert();

                // Purchase INVOICE
                if ("VAT Entry".Type = "VAT Entry".Type::Purchase) and ("Document Type" = "Document Type"::Invoice) then
                    FillArrayForCellValue()
                // Purchase Credit Memo
                else
                    if ("VAT Entry".Type = "VAT Entry".Type::Purchase) and ("Document Type" = "Document Type"::"Credit Memo") then
                        FillArrayForCellValue()
                    // Sales Invoice/Credit Memo. Tipi TVSH-je = Reverse Charge.
                    else
                        if (Type = Type::Sale) and (("VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT")) then
                            FillArrayForCellValue()
                        // Sales Invoice
                        else
                            if ("VAT Entry".Type = "VAT Entry".Type::Sale) and ("Document Type" = "Document Type"::Invoice) then
                                FillArrayForCellValue()
                            //Sales Credit Memo.
                            else
                                if (Type = Type::Sale) and ("Document Type" = "Document Type"::"Credit Memo") then
                                    FillArrayForCellValue()
                                // Purchase Invoice/Credit Memo. Tipi TVSH-je = Reverse Charge.
                                else
                                    if (Type = Type::Purchase) and (("VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT")) then
                                        FillArrayForCellValue()
                                    else
                                        CurrReport.Skip();

                if "VAT Entry".Type = "VAT Entry".Type::Sale then
                    if Customer.Get("VAT Entry"."Bill-to/Pay-to No.") then begin
                        SourceName := Customer."Search Name";
                        SourceVAT := Customer."VAT Registration No.";
                        SourceFiscalNo := Customer."Smw Fiscal No.";
                        SourceCity := Customer.City;
                    end;

                if "VAT Entry".Type = "VAT Entry".Type::Purchase then begin
                    if "VAT Entry"."Smw No. of Imported Invoice" <> '' then
                        VendorNoToDispaly := GetVendImportedInvoice()
                    else
                        VendorNoToDispaly := "VAT Entry"."Bill-to/Pay-to No.";

                    if Vendor.Get(VendorNoToDispaly) then begin
                        SourceName := Vendor."Search Name";
                        SourceVAT := Vendor."VAT Registration No.";
                        SourceFiscalNo := Vendor."Smw Fiscal No.";
                        if SourceFiscalNo = '' then
                            SourceFiscalNo := ReturnUCDNo("VAT Entry"."Document No.");
                        SourceCity := Vendor.City;
                    end;
                end;

                SkiRecord := SkipBlankedRecord();
                if SkiRecord then begin
                    RecordCount := 0;
                    //DocumentNoLast := '';
                    CurrReport.Skip();
                end else
                    RecordCount := RecordCount + 1;


                //DocumentNoLast := "VAT Entry"."Document No.";

                if SkiRecord then
                    CurrReport.Skip();
            end;

            trigger OnPreDataItem()
            begin
                //SETCURRENTKEY("Posting Date", "Document No.");
                if ShowBy = ShowBy::"Document Date" then
                    SetCurrentKey("Document Date", "Document No.")
                else
                    SetCurrentKey("Posting Date", "Document No.");
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(LanguageIdCtrl; LanguageId)
                    {
                        Caption = 'Choose Language';
                        ApplicationArea = All;

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            LanguageManagement: Codeunit Language;
                        begin
                            LanguageManagement.LookupApplicationLanguageId(LanguageId);
                            if LanguageId <> 0 then begin
                                Text := Format(LanguageId);
                                exit(true);
                            end;
                        end;
                    }
                    field(ShowByCtrl; ShowBy)
                    {
                        Caption = 'Show Lines by';
                        OptionCaption = 'Document Date,Posting Date';
                        ApplicationArea = All;
                    }
                    field(SkipSalesInvCtrl; SkipSalesInv)
                    {
                        Caption = 'Skip Sales Invoices';
                        ApplicationArea = All;
                    }
                    field(SkipSalesCrMemoCtrl; SkipSalesCrMemo)
                    {
                        Caption = 'Skip Sales Credit Memos';
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            //Print2Excel:=TRUE;
            SkipSalesInv := true;
            SkipSalesCrMemo := true;

            AllowSalesDocuments();
        end;
    }

    labels
    {
        Libri_i_blerjes_lab = 'Purchase Book';
        Tatimpaguesi_lab = 'Tatimpaguesi';
        NRF_i_komp_lab = 'Fiscal No.';
        NrTVSh_i_komp_lab = 'Vat R. No.';
        adresa_i_komp_lab = 'Address';
        Muaji_lab = 'Month';
        Viti_lab = 'Year';
        TopHeader11_lab = 'Invoice';
        TopHeader12_lab = 'Seller';
        TopHeader13_lab = 'Purchases and Imports exempt and with non-deductible VAT';
        TopHeader14_lab = 'Taxable Purchases and imports with 18%, and adjustment of deductions';
        TopHeader15_lab = ' Taxable Purchases and imports with 8%, and adjustment of deductions';
        Header11_lab = 'No.';
        Header12_lab = 'Date of Invoice';
        Header13_lab = 'Number of Invoice';
        Header14_lab = 'Name of Supplier';
        Header15_lab = 'TID of supplier';
        Header16_lab = 'VAT number';
        Header17_lab = 'NAV Document No.';
        SubHeader11_lab = 'Number of the box in VAT declaration form';
        SubHeader12_lab = 'TOTAL';
    }

    trigger OnInitReport()
    begin
        LanguageId := 1052;
        ShowBy := ShowBy::"Document Date";

        PurchasesPayableSetup.Get();
        PurchasesPayableSetup.TestField("Smw Purchase Book Code");
    end;

    trigger OnPreReport()
    begin
        CompanyInfo.Get();
        CurrReport.Language(LanguageId);

        windowsLang."Language ID" := LanguageId;
        if windowsLang.Find('=') then
            textCode := windowsLang."Abbreviated Name";

        i := 0;
        C := 177;
        Clear(Field_Codes_Caption);

        VatBookFieldsSetup.SetCurrentKey("Presentation Order");
        VatBookFieldsSetup.SetRange("Book Code", PurchasesPayableSetup."Smw Purchase Book Code");
        if VatBookFieldsSetup.FindSet() then
            repeat
                    if VatBookFieldsSetup.Show then begin
                        i := i + 1;
                        textLang := VatBookFieldsSetup.CheckTextLanguage(textCode);
                        if (textLang = '') then
                            textLang := VatBookFieldsSetup."Field Name";

                        Field_Codes_Caption[i] [1] := VatBookFieldsSetup.Code;              //Codes for Calculation
                        Field_Codes_Caption[i] [2] := textLang;                             //Column Name
                        Field_Codes_Caption[i] [3] := VatBookFieldsSetup."Box No.";         //Numri i Kutisë në Deklaratën e TVSH-së
                        Field_Codes_Caption[i] [4] := StrSubstNo(Lab12345_Txt
                          , textLang, C, VatBookFieldsSetup."Box No.", C, VatBookFieldsSetup."Field Formula"); //Column Name
                    end;

                TempVatBookFieldsSetup.Copy(VatBookFieldsSetup);
                TempVatBookFieldsSetup."Sort No." := i;
                TempVatBookFieldsSetup.Insert();
            until VatBookFieldsSetup.Next() = 0;

        NoOfColumns := i;
        i := 0;

        CustomerNoFilter := "VAT Entry".GetFilter("VAT Entry"."Bill-to/Pay-to No.");
        PostingDateFilter := "VAT Entry".GetFilter("VAT Entry"."Document Date");

        //Return name of month based on first date of range or filter.
        if "VAT Entry".GetFilter("VAT Entry"."Document Date") <> '' then begin
            DateRec.SetRange("Period Type", DateRec."Period Type"::Date);
            DateRec.SetFilter(DateRec."Period Start", PostingDateFilter);

            // if DateRec.FindFirst() then begin
            //     CustomerDateFilter := DateRec."Period Start";
            //     MonthForExcelHeader := ReturnMonth(Format(CustomerDateFilter, 0, '<Month,2>'));
            //     YearVar := Date2DMY(CustomerDateFilter, 3);
            // end;
        end;

        // NrRendorForLines := 0;
        // RowNoToEditTotals := 0;
    end;

    var
        CompanyInfo: Record "Company Information";
        Customer: Record Customer;
        DateRec: Record Date;
        PurchasesPayableSetup: Record "Purchases & Payables Setup";
        TempVatBookFieldsSetup: Record "Smw VAT Book Field Config." temporary;
        VatBookFieldsSetup: Record "Smw VAT Book Field Config.";
        TempVATAmountLine: Record "VAT Amount Line" temporary;
        TempVatEntryRecTemp: Record "VAT Entry" temporary;
        Vendor: Record Vendor;
        windowsLang: Record "Windows Language";
        SkipColumnCalculation: Boolean;
        SkipSalesCrMemo: Boolean;
        SkipSalesInv: Boolean;
        SkiRecord: Boolean;
        C: Char;
        //MonthForExcelHeader: Code[20];
        SourceVAT: Code[20];
        textCode: Code[20];
        SourceFiscalNo: Code[30];
        ExternalDocumentNo: Code[35];
        //CustomerDateFilter: Date;
        DateToDisplay: Date;
        CellValue: array[23] of Decimal;
        i: Integer;
        LanguageId: Integer;
        NoOfColumns: Integer;
        NoOfRecords: Integer;
        //NrRendorForLines: Integer;
        RecordCount: Integer;
        //RowNoToEditTotals: Integer;
        //YearVar: Integer;
        Bill_CaptionLbl: Label 'Invoice';
        Box_according_to_VAT_CaptionLbl: Label 'Number of the box in VAT declaration form';
        Date_CaptionLbl: Label 'Date';
        Fiscal_No_CaptionLbl: Label 'Seller Fiscal number';
        No_CaptionLbl: Label 'No.';
        ShowBy: Option "Document Date","Posting Date";
        CustomerNoFilter: Text;
        PostingDateFilter: Text;
        SourceCity: Text[100];
        SourceName: Text[100];
        Field_Codes_Caption: array[23, 4] of Text[250];
        textLang: Text[250];
        PurchasesAndImportsExemptAndWithNonDeductibleVATLbl: Label 'Purchases and Imports exempt and with non-deductible VAT';
        PurchasesAndImportsTaxable8DiscountArrangementsLbl: Label 'Purchases and Imports taxable at 8%, as well as discount arrangements';
        PurchasesAndImportsTaxable18DiscountArrangementsLbl: Label 'Purchases and Imports taxable at 18%, as well as discount arrangements';
        Seller_CaptionLbl: Label 'Supplier';
        Serial_No_CaptionLbl: Label 'Number of Invoice';
        Trade_name_person_CaptionLbl: Label 'Name of Supplier';
        Vat_Registration_No_CaptionLbl: Label 'Vat Registration No.';
        Lab12345_Txt: Label '%1%2%3%4%5', Locked = true;

    procedure ReturnUCDNo(DocumentNo: Code[20]): Code[20]
    var
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        PurchaseInvoice: Record "Purch. Inv. Header";
    begin
        case "VAT Entry"."Document Type" of
            "VAT Entry"."Document Type"::Invoice:
                if PurchaseInvoice.GET(DocumentNo) then
                    exit(PurchaseInvoice."Smw UCD No.");
            "VAT Entry"."Document Type"::"Credit Memo":
                if PurchCrMemoHdr.GET(DocumentNo) then
                    exit(PurchCrMemoHdr."Smw UCD No.");
        end;
    end;

    procedure ReturnMonth(Month: Code[2]): Code[20]
    begin
        case Month of
            '01':
                exit('JANAR');
            '02':
                exit('SHKURT');
            '03':
                exit('MARS');
            '04':
                exit('PRILL');
            '05':
                exit('MAJ');
            '06':
                exit('QERSHOR');
            '07':
                exit('KORRIK');
            '08':
                exit('GUSHT');
            '09':
                exit('SHTATOR');
            '10':
                exit('TETOR');
            '11':
                exit('NENTOR');
            '12':
                exit('DHJETOR');
        end;
    end;

    local procedure FillArrayForCellValue()
    var
        AmountValue_L: Decimal;
        BaseValue_L: Decimal;
        CellValueL: Decimal;
        k: Integer;
    begin
        //Used to Store Vat and amount for total columns.
        TempVATAmountLine.Reset();
        TempVATAmountLine.DeleteAll();
        Clear(TempVATAmountLine);

        TempVatBookFieldsSetup.Reset();
        TempVatBookFieldsSetup.SetCurrentKey("Presentation Order");
        TempVatBookFieldsSetup.SetRange("Totaling Type", TempVatBookFieldsSetup."Totaling Type"::"Normal Amounts");
        TempVatBookFieldsSetup.SetRange("Calculate/SUM", true);
        if TempVatBookFieldsSetup.FindSet() then
                repeat
                    k := TempVatBookFieldsSetup."Sort No.";
                    CellValueL := 0;
                    CellValueL := GETCellValue(TempVatBookFieldsSetup);
                    if TempVatBookFieldsSetup.Show then
                        CellValue[k] := CellValueL;
                    if TempVatBookFieldsSetup."Reverse Sign" then
                        CellValue[k] := -CellValue[k];
                    if not SkipColumnCalculation then
                        InsertFieldAmountsTemporary("VAT Entry", TempVatBookFieldsSetup);
                until TempVatBookFieldsSetup.Next() = 0;

        TempVatBookFieldsSetup.Reset();
        TempVatBookFieldsSetup.SetCurrentKey("Presentation Order");
        TempVatBookFieldsSetup.SetFilter("Totaling Type", '%1|%2'
          , TempVatBookFieldsSetup."Totaling Type"::"Formula Base Calculatin"
          , TempVatBookFieldsSetup."Totaling Type"::"Formula Amount Calculation");
        TempVatBookFieldsSetup.SetRange("Calculate/SUM", true);
        if TempVatBookFieldsSetup.FindSet() then
            repeat
                    CellValueL := 0;
                k := TempVatBookFieldsSetup."Sort No.";
                CellValueL := GetFieldAmountsTemporary(TempVatBookFieldsSetup, BaseValue_L, AmountValue_L);
                if TempVatBookFieldsSetup.Show then
                    CellValue[k] := CellValueL;
                InsertFieldAmountsTemporaryPerTotals(BaseValue_L, AmountValue_L, TempVatBookFieldsSetup);
            until TempVatBookFieldsSetup.Next() = 0;

        TempVatBookFieldsSetup.Reset();
        TempVatBookFieldsSetup.SetCurrentKey("Presentation Order");
        TempVatBookFieldsSetup.SetRange("Totaling Type", TempVatBookFieldsSetup."Totaling Type"::"Formula Base&Amount Calculation");
        TempVatBookFieldsSetup.SetRange("Calculate/SUM", true);
        if TempVatBookFieldsSetup.FindSet() then
            repeat
                    CellValueL := 0;
                k := TempVatBookFieldsSetup."Sort No.";
                CellValueL := GetFieldAmountsTemporary(TempVatBookFieldsSetup, BaseValue_L, AmountValue_L);
                if TempVatBookFieldsSetup.Show then
                    CellValue[k] := CellValueL;
                InsertFieldAmountsTemporaryPerTotals(BaseValue_L, AmountValue_L, TempVatBookFieldsSetup);
            until TempVatBookFieldsSetup.Next() = 0;
    end;

    local procedure GETCellValue(VatBookFieldsSetup_Par: Record "Smw VAT Book Field Config."): Decimal
    begin
        SkipColumnCalculation := false;
        TempVatEntryRecTemp.Reset();

        if VatBookFieldsSetup_Par."VAT Entry Type" <> VatBookFieldsSetup_Par."VAT Entry Type"::" " then
            if VatBookFieldsSetup_Par."VAT Entry Type" <> "VAT Entry".Type then begin
                SkipColumnCalculation := true;
                exit;
            end;

        if (VatBookFieldsSetup_Par."Document Type" <> VatBookFieldsSetup_Par."Document Type"::" ") then
            if ("VAT Entry"."Document Type" = "VAT Entry"."Document Type"::Invoice) then begin
                if (VatBookFieldsSetup_Par."Document Type" <> VatBookFieldsSetup_Par."Document Type"::Invoice) then begin
                    SkipColumnCalculation := true;
                    exit;
                end;
            end else
                if ("VAT Entry"."Document Type" = "VAT Entry"."Document Type"::"Credit Memo") then begin
                    if (VatBookFieldsSetup_Par."Document Type" <> VatBookFieldsSetup_Par."Document Type"::"Credit Memo") then
                        SkipColumnCalculation := true;
                    exit;
                end;

        if not ((VatBookFieldsSetup_Par."Gen. Bus. P. G. Filter" <> '')
          or (VatBookFieldsSetup_Par."VAT Bus. P. G. Filter" <> '')
          or (VatBookFieldsSetup_Par."Gen. Prod. P. G. Filter" <> '')
          or (VatBookFieldsSetup_Par."VAT Prod. P. G. Filter" <> '')
          or (VatBookFieldsSetup_Par."Reason Code" <> '')) then begin
            SkipColumnCalculation := true;
            exit(0);
        end;

        TempVatEntryRecTemp.SetRange("Entry No.", "VAT Entry"."Entry No.");
        if VatBookFieldsSetup_Par."Gen. Bus. P. G. Filter" <> '' then
            TempVatEntryRecTemp.SetFilter("Gen. Bus. Posting Group", VatBookFieldsSetup_Par."Gen. Bus. P. G. Filter");
        if VatBookFieldsSetup_Par."VAT Bus. P. G. Filter" <> '' then
            TempVatEntryRecTemp.SetFilter("VAT Bus. Posting Group", VatBookFieldsSetup_Par."VAT Bus. P. G. Filter");
        if VatBookFieldsSetup_Par."Gen. Prod. P. G. Filter" <> '' then
            TempVatEntryRecTemp.SetFilter("Gen. Prod. Posting Group", VatBookFieldsSetup_Par."Gen. Prod. P. G. Filter");
        if VatBookFieldsSetup_Par."VAT Prod. P. G. Filter" <> '' then
            TempVatEntryRecTemp.SetFilter("VAT Prod. Posting Group", VatBookFieldsSetup_Par."VAT Prod. P. G. Filter");
        if VatBookFieldsSetup_Par."Reason Code" <> '' then
            TempVatEntryRecTemp.SetFilter("Reason Code", VatBookFieldsSetup_Par."Reason Code");

        if TempVatEntryRecTemp.IsEmpty() then begin
            SkipColumnCalculation := true;
            exit(0);
        end;

        exit("VAT Entry".Base);
    end;

    local procedure InsertFieldAmountsTemporary(var VatEntry: Record "VAT Entry"; var pVatBookFieldsSetup: Record "Smw VAT Book Field Config.")
    var
        AmountValue_L: Decimal;
        BaseValue_L: Decimal;
    begin
        if (VatEntry.Base = 0) and (VatEntry.Amount = 0) then
            exit;

        TempVATAmountLine.Reset();
        TempVATAmountLine.SetRange("VAT Identifier", pVatBookFieldsSetup.Code);

        if not TempVATAmountLine.FindFirst() then
            Clear(TempVATAmountLine);

        BaseValue_L := VatEntry.Base;
        AmountValue_L := VatEntry.Amount;

        if pVatBookFieldsSetup."Reverse Sign" then begin
            BaseValue_L := VatEntry.Base * -1;
            AmountValue_L := VatEntry.Amount * -1;
        end;

        TempVATAmountLine."VAT Identifier" := pVatBookFieldsSetup.Code;
        TempVATAmountLine."VAT Base" += BaseValue_L;
        TempVATAmountLine."VAT Amount" += AmountValue_L;
        // TempVATAmountLine."Totaling Type" := pVatBookFieldsSetup."Totaling Type";
        // TempVATAmountLine."Is Calculated" := TRUE;
        if not TempVATAmountLine.Insert() then
            TempVATAmountLine.Modify();
    end;

    local procedure InsertFieldAmountsTemporaryPerTotals(pBaseValue: Decimal; pAmountValue: Decimal; var pVatBookFieldsSetup: Record "Smw VAT Book Field Config.")
    var
        AmountValue_L: Decimal;
        BaseValue_L: Decimal;
    begin
        if (pBaseValue = 0) and (pAmountValue = 0) then
            exit;

        TempVATAmountLine.Reset();
        TempVATAmountLine.SetRange("VAT Identifier", pVatBookFieldsSetup.Code);

        if not TempVATAmountLine.FindFirst() then
            Clear(TempVATAmountLine);

        BaseValue_L := pBaseValue;
        AmountValue_L := pAmountValue;

        if pVatBookFieldsSetup."Reverse Sign" then begin
            BaseValue_L := pBaseValue * -1;
            AmountValue_L := pAmountValue * -1;
        end;

        TempVATAmountLine."VAT Identifier" := pVatBookFieldsSetup.Code;
        TempVATAmountLine."VAT Base" += BaseValue_L;
        TempVATAmountLine."VAT Amount" += AmountValue_L;
        // TempVATAmountLine."Totaling Type" := pVatBookFieldsSetup."Totaling Type";
        // TempVATAmountLine."Is Calculated" := TRUE;
        if not TempVATAmountLine.Insert() then
            TempVATAmountLine.Modify();
    end;

    local procedure GetFieldAmountsTemporary(var pVatBookFieldsSetup: Record "Smw VAT Book Field Config."; var pBaseValue: Decimal; var pAmountValue: Decimal): Decimal
    var
        TotlaValue: Decimal;
    begin
        pBaseValue := 0;
        pAmountValue := 0;
        TempVATAmountLine.SetFilter("VAT Identifier", pVatBookFieldsSetup."Totaling Columns");
        if TempVATAmountLine.FindSet() then
            repeat
                    case pVatBookFieldsSetup."Totaling Type" of
                        pVatBookFieldsSetup."Totaling Type"::"Formula Base Calculatin":
                            begin
                                TotlaValue += TempVATAmountLine."VAT Base";
                                pBaseValue += TempVATAmountLine."VAT Base";
                            end;
                        pVatBookFieldsSetup."Totaling Type"::"Formula Amount Calculation":
                            begin
                                TotlaValue += TempVATAmountLine."VAT Amount";
                                pAmountValue += TempVATAmountLine."VAT Amount";
                            end;
                        pVatBookFieldsSetup."Totaling Type"::"Formula Base&Amount Calculation":
                            begin
                                TotlaValue += TempVATAmountLine."VAT Base";
                                pBaseValue += TempVATAmountLine."VAT Base";
                                TotlaValue += TempVATAmountLine."VAT Amount";
                                pAmountValue += TempVATAmountLine."VAT Amount";
                            end;
                    end;
            until TempVATAmountLine.Next() = 0;

        if pVatBookFieldsSetup."Reverse Sign" then
            exit(-1 * TotlaValue)
        else
            exit(TotlaValue);
    end;

    local procedure SkipBlankedRecord(): Boolean
    var
        SkipRecord: Boolean;
        j: Integer;
    begin
        SkipRecord := true;
        for j := 1 to ArrayLen(CellValue) do
            if CellValue[j] <> 0 then
                SkipRecord := false;
        exit(SkipRecord)
    end;

    local procedure GetVendImportedInvoice(): Code[20]
    var
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        PurchInvHeader: Record "Purch. Inv. Header";
        VendorNo: Code[20];
    begin
        case "VAT Entry"."Document Type" of
            "VAT Entry"."Document Type"::Invoice:
                if PurchInvHeader.Get("VAT Entry"."Smw No. of Imported Invoice") then
                    VendorNo := PurchInvHeader."Buy-from Vendor No.";
            "VAT Entry"."Document Type"::"Credit Memo":
                if PurchCrMemoHdr.Get("VAT Entry"."Smw No. of Imported Invoice") then
                    VendorNo := PurchCrMemoHdr."Buy-from Vendor No.";
        end;

        exit(VendorNo);
    end;

    procedure AllowSalesDocuments()
    var
        VatBookFieldsSetupL: Record "Smw VAT Book Field Config.";
    begin
        SkipSalesInv := true;
        SkipSalesCrMemo := true;
        // ,Invoice,Credit Memo
        VatBookFieldsSetupL.Reset();
        VatBookFieldsSetupL.SetRange("Book Code", PurchasesPayableSetup."Smw Purchase Book Code");
        VatBookFieldsSetupL.SetRange("Calculate/SUM", true);
        VatBookFieldsSetupL.SetRange("Totaling Type", VatBookFieldsSetupL."Totaling Type"::"Normal Amounts");
        VatBookFieldsSetupL.SetRange("VAT Entry Type", VatBookFieldsSetupL."VAT Entry Type"::Sale);
        if VatBookFieldsSetupL.FindSet() then
            repeat
                    if VatBookFieldsSetupL."VAT Entry Type" = VatBookFieldsSetupL."VAT Entry Type"::Sale then
                        case VatBookFieldsSetupL."Document Type" of
                            VatBookFieldsSetupL."Document Type"::Invoice:
                                SkipSalesInv := false;
                            VatBookFieldsSetupL."Document Type"::"Credit Memo":
                                SkipSalesCrMemo := false;
                            VatBookFieldsSetupL."Document Type"::" ":
                                begin
                                    SkipSalesInv := false;
                                    SkipSalesCrMemo := false;
                                end;
                        end;

            // if VatBookFieldsSetupL."Document Type" = VatBookFieldsSetupL."Document Type"::Invoice then
            //     SkipSalesInv := false
            // else
            //     if VatBookFieldsSetupL."Document Type" = VatBookFieldsSetupL."Document Type"::"Credit Memo" then
            //         SkipSalesCrMemo := false
            //     else
            //         if VatBookFieldsSetupL."Document Type" = VatBookFieldsSetupL."Document Type"::" " then begin
            //             SkipSalesInv := false;
            //             SkipSalesCrMemo := false;
            //         end;
            until VatBookFieldsSetupL.Next() = 0;
    end;
}
