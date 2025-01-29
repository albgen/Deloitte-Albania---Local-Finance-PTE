report 51640 "Smw Sales Book AL"
{
    // // Smartwork Sh.P.K
    // // -------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // // T           = Line Type: ? = Modification line on Development Request
    // // / = Comment on intervention
    // // -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
    // // T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
    // // -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
    // // ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New report "Sales Book"
    // //  |AL01   |AL01            |03.06.21|#AL01   |VT  |Added function GetBillNo And Set Field BillNo insted Document No
    // //  |                                               |Added new functions: "GetCustomerExportedInvoice", "ReturnUCDNo".
    // //  |                                               |Changed Code on trigger "VAT Entry - OnAfterGetRecord()"
    DefaultLayout = RDLC;
    RDLCLayout = './src/Layout/51640.SmwSalesBookAL.rdl';
    Caption = 'Sales Book VAT - Albania';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("VAT Entry"; "VAT Entry")
        {
            RequestFilterFields = "Document Date", "Document No.", "Bill-to/Pay-to No.", "Smw Global Dimension 1 Code";
            DataItemTableView = SORTING("Document No.", "Posting Date") ORDER(Ascending) WHERE(Type = FILTER(Purchase | Sale), "Document Type" = FILTER(<> ' ' & <> Payment), "Smw Dont show in VAT Book" = CONST(false));
            column(Company_Name; CompanyInfo.Name)
            {
                IncludeCaption = true;
            }
            column(Company_Address; CompanyInfo.Address)
            {
            }
            column(Company_Fiscal_No; '')
            {
            }
            column(Company_VAT_Registration_No; CompanyInfo."VAT Registration No.")
            {
            }
            column(Customer_No; Customer."No.")
            {
            }
            column(MonthForExcelHeader; MonthForExcelHeader)
            {
            }
            column(YaearVar; YearVar)
            {
            }
            column(Document_date; Format("Document Date", 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(Document_No; "VAT Entry"."Document No.")
            {
                IncludeCaption = true;
            }
            column(SourceName; SourceName)
            {
            }
            column(SourceCity; SourceCity)
            {
            }
            column(SourceFiscalNo; SourceFiscalNo)
            {
            }
            column(SourceVAT; SourceVAT)
            {
            }
            column(BillNo; BillNo)
            {
            }
            column(CurrReport_PAGENOCaption; PAGENOCaptionLbl)
            {
            }
            column(OfCaptionLbl; OfCaptionLbl)
            {
            }
            column(Sales_Book_Caption; Sales_Book_Lbl)
            {
            }
            column(Company_Caption; Company_Lbl)
            {
            }
            column(Vat_Registration_No_Caption; Vat_Registration_No_Lbl)
            {
            }
            column(Year_Caption; Year_Lbl)
            {
            }
            column(Month_Caption; Month_Lbl)
            {
            }
            column(Without_activity_Caption; Without_activity_Lbl)
            {
            }
            column(Fill_in_YES_if_no_transaction_has_taken_place_during_the_month_Caption; Fill_in_YES_if_no_transaction_has_taken_place_during_the_month_Lbl)
            {
            }
            column(Bill_Caption; Bill_Lbl)
            {
            }
            column(Buyer_Caption; Buyer_Lbl)
            {
            }
            column(Bill_No_Caption; Bill_No_Lbl)
            {
            }
            column(Serial_No_Caption; Serial_No_Lbl)
            {
            }
            column(Date_Caption; Date_Lbl)
            {
            }
            column(Trade_name_person_Caption; Trade_name_person_Lbl)
            {
            }
            column(County_Caption; County_Lbl)
            {
            }
            column(Name_LastName_Caption; Name_LastName_Lbl)
            {
            }
            column(Explanation1_Caption; Explanation1_Lbl)
            {
            }
            column(Explanation2_Caption; Explanation3_Lbl)
            {
            }
            column(Explanation3_Caption; Explanation3_Lbl)
            {
            }
            column(Sale_with_20_Caption; Sale_with_20_Lbl)
            {
            }
            column(Sale_with_10_Caption; Sale_with_10_Lbl)
            {
            }
            column(Sale_with_6_Caption; Sale_with_6_Lbl)
            {
            }
            column(Regime_ravel_agents_travel_Profit_margin_Sale_at_auction_Caption; Regime_ravel_agents_travel_Profit_margin_Sale_at_auction_Lbl)
            {
            }
            column(VAT_autocover_for_sale_Caption; VAT_autocover_for_sale_Lbl)
            {
            }
            column(Bad_Debt_Caption; Bad_Debt_Lbl)
            {
            }
            column(NoOfColumns; NoOfColumns)
            {
            }
            column(DateToDisplay; Format(DateToDisplay, 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(Box_according_Vat_Caption; Box_according_Vat_Lbl)
            {
            }
            column(Total_Caption; Total_Lbl)
            {
            }
            column(ExternalDocumentNo; ExternalDocumentNo)
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
            column(Field_Codes_Caption_24_4; Field_Codes_Caption[24] [4])
            {
            }
            column(Field_Codes_Caption_25_4; Field_Codes_Caption[25] [4])
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
            column(Cell_Value_24; CellValue[24])
            {
            }
            column(Cell_Value_25; CellValue[25])
            {
            }

            trigger OnAfterGetRecord()
            var
                CustomerNoToDispaly: Code[20];
            begin
                SourceName := '';
                SourceCity := '';
                SourceVAT := '';
                SourceFiscalNo := '';
                BillNo := '';
                Clear(CellValue);

                //Purchase invoices are not processed(shown)
                //these invoices will be shown on purchase book.
                //If they are Reverse charge, than will be shown.
                if ("VAT Entry"."VAT Calculation Type" <> "VAT Entry"."VAT Calculation Type"::"Reverse Charge VAT") then begin
                    if ("VAT Entry".Type = "VAT Entry".Type::Purchase) and ("Document Type" = "Document Type"::Invoice) then
                        if SkipPurchInv then begin
                            NoOfRecords := NoOfRecords - 1;
                            CurrReport.Skip();
                        end;
                    if ("VAT Entry".Type = "VAT Entry".Type::Purchase) and ("Document Type" = "Document Type"::"Credit Memo") then
                        if SkipPurchCrMemo then begin
                            NoOfRecords := NoOfRecords - 1;
                            CurrReport.Skip();
                        end;
                end;

                TempVatEntry.Reset();
                Clear(TempVatEntry);
                TempVatEntry.DeleteAll();

                TempVatEntry.Copy("VAT Entry");
                TempVatEntry.Insert();

                if ShowBy = ShowBy::"Document Date" then
                    DateToDisplay := "VAT Entry"."Document Date"
                else
                    DateToDisplay := "VAT Entry"."Posting Date";

                if "External Document No." <> '' then
                    ExternalDocumentNo := "External Document No."
                else
                    ExternalDocumentNo := '----';

                BillNo := GetBillNo("VAT Entry");

                // Sales Invoice
                if ("VAT Entry".Type = "VAT Entry".Type::Sale) and ("Document Type" = "Document Type"::Invoice) then
                    FillArrayForCellValue()
                //Sales Credit Memo.
                else
                    if (Type = Type::Sale) and ("Document Type" = "Document Type"::"Credit Memo") then
                        FillArrayForCellValue()
                    // Sales Invoice/Credit Memo. Tipi TVSH-je = Reverse Charge.
                    else
                        if (Type = Type::Sale) and (("VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT")) then
                            FillArrayForCellValue()
                        // Purchase Invoice
                        else
                            if (Type = Type::Purchase) and ("Document Type" = "Document Type"::Invoice) then
                                FillArrayForCellValue()
                            // //Purchase Credit Memo.
                            else
                                if (Type = Type::Purchase) and ("Document Type" = "Document Type"::"Credit Memo") then
                                    FillArrayForCellValue()
                                // Purchase Invoice/Credit Memo. Tipi TVSH-je = Reverse Charge.
                                else
                                    if (Type = Type::Purchase) and (("VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT")) then
                                        FillArrayForCellValue()
                                    else
                                        CurrReport.Skip();

                if "VAT Entry".Type = "VAT Entry".Type::Sale then begin
                    //#AL01.sn 12.10.21
                    //  IF Customer.GET("VAT Entry"."Bill-to/Pay-to No.") THEN BEGIN
                    //    SourceName := Customer."Search Name";
                    //    SourceVAT := Customer."VAT Registration No.";
                    //    SourceFiscalNo := Customer."Fiscal No.";
                    //    SourceCity := Customer.City
                    //  END
                    IF "VAT Entry"."Smw No. of Exported Invoice" <> '' THEN
                        CustomerNoToDispaly := GetCustomerExportedInvoice()
                    ELSE
                        CustomerNoToDispaly := "VAT Entry"."Bill-to/Pay-to No.";

                    if Customer.Get(CustomerNoToDispaly) then begin
                        SourceName := Customer."Search Name";
                        SourceVAT := Customer."VAT Registration No.";
                        SourceFiscalNo := Customer."Smw Fiscal No.";
                        if SourceFiscalNo = '' then
                            SourceFiscalNo := ReturnUCDNo("VAT Entry"."Document No.");
                        SourceCity := Customer.City;
                    end;
                    //#AL01.en 12.10.21
                end;

                if "VAT Entry".Type = "VAT Entry".Type::Purchase then
                    if Vendor.Get("VAT Entry"."Bill-to/Pay-to No.") then begin
                        SourceName := Vendor.Name;
                        SourceVAT := Vendor."VAT Registration No.";
                        SourceFiscalNo := Vendor."Smw Fiscal No.";
                        SourceCity := Vendor.City
                    end;

                if "VAT Entry".Type = "VAT Entry".Type::Sale then
                    IF "VAT Entry"."Smw Cancelled Entry" THEN begin
                        SourceName := CanceledInv_Lbl;
                        SourceVAT := '0';
                        SourceCity := '0';
                    end;

                SkipRecord := SkipBlankedRecord();//Skips records that are blank or zero on all columns.
                if SkipRecord then begin
                    RecordCount := 0;
                    CurrReport.Skip();
                end else
                    RecordCount := RecordCount + 1;

                if SkipRecord then
                    CurrReport.Skip();
            end;

            trigger OnPreDataItem()
            begin
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
                        ApplicationArea = All;
                        OptionCaption = 'Document Date,Posting Date';
                    }
                    field(SkipPurchInvCtrl; SkipPurchInv)
                    {
                        Caption = 'Skip Purchase Invoices';
                        ApplicationArea = All;
                    }
                    field(SkipPurchCrMemoCtrl; SkipPurchCrMemo)
                    {
                        Caption = 'Skip Purchase Credit Memos';
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
            SkipPurchInv := true;
            SkipPurchCrMemo := true;

            AllowPurchaseDocuments();
        end;
    }

    labels
    {
        Libri_i_shitjes_lab = 'Sales Book';
        Tatimpaguesi_lab = 'Tatimpaguesi';
        NRF_i_komp_lab = 'Fiscal No.';
        NrTVSh_i_komp_lab = 'Vat R. No.';
        Adresa_i_komp_lab = 'Address';
        Muaji_lab = 'Month';
        Viti_lab = 'Year';
        TopHeader1_lab1 = 'Invoice';
        TopHeader2_lab1 = 'Costumer';
        TopHeader3_lab1 = 'Exempt sales from VAT';
        TopHeader4_lab1 = 'Taxable sales at the rate of 18%';
        TopHeader5_lab1 = 'Taxable sales at the rate of 8%';
        Header1_Lab1 = 'No.';
        Header2_Lab1 = 'Date of Invoice';
        Header3_Lab1 = 'Number of Invoice';
        Header4_Lab1 = 'Name of Costumer';
        Header5_Lab1 = 'TID of Costumer';
        Header6_Lab1 = 'VAT number of costumer';
        SubHeader1_lab1 = 'Number of the box in VAT declaration form';
        GJITHSEJ_lab1 = 'TOTAL';
    }

    trigger OnInitReport()
    begin
        LanguageId := 1052;
        ShowBy := ShowBy::"Document Date";
    end;

    trigger OnPreReport()
    var
        i: Integer;
        C: Char;
    begin
        CompanyInfo.Get();
        CurrReport.Language(LanguageId);
        i := 0;
        C := 177;
        Clear(Field_Codes_Caption);
        VatBookFieldsSetup.SetCurrentKey("Presentation Order");
        VatBookFieldsSetup.SetRange("Book Code", 'SALES.BOOK.LABELS');

        windowsLang."Language ID" := LanguageId;
        if windowsLang.Find('=') then
            textCode := windowsLang."Abbreviated Name";

        if VatBookFieldsSetup.FindSet() then
            repeat
                if VatBookFieldsSetup.Show then begin
                    i := i + 1;
                    textLang := VatBookFieldsSetup.CheckTextLanguage(textCode);
                    if (textLang = '') then
                        textLang := VatBookFieldsSetup."Field Name";

                    Field_Codes_Caption[i] [1] := VatBookFieldsSetup.Code;              //Codes for Calculation
                    Field_Codes_Caption[i] [2] := CopyStr(textLang, 1, 250);            //Column Name
                    Field_Codes_Caption[i] [3] := VatBookFieldsSetup."Box No.";         //Numri i Kutisë në Deklaratën e TVSH-së
                    Field_Codes_Caption[i] [4] := CopyStr(StrSubstNo(Lab12345_Txt, textLang, C, VatBookFieldsSetup."Box No.", C,
                      VatBookFieldsSetup."Field Formula"), 1, MaxStrLen(Field_Codes_Caption[i] [4])); //Column Name
                end;

                TempVatBookFieldsSetup.Copy(VatBookFieldsSetup);
                TempVatBookFieldsSetup."Sort No." := i;
                TempVatBookFieldsSetup.Insert();
            until VatBookFieldsSetup.Next() = 0;

        NoOfColumns := i;
        i := 0;

        CustomerNoFilter := "VAT Entry".GetFilter("VAT Entry"."Bill-to/Pay-to No.");
        PostingDateFilter := "VAT Entry".GetFilter("VAT Entry"."Document Date");

        //E kthen emrin e muajit dhe vitin, duke u bazu ne daten e fillimit.
        if "VAT Entry".GetFilter("VAT Entry"."Document Date") <> '' then begin
            DateRec.SetRange("Period Type", DateRec."Period Type"::Date);
            DateRec.SetFilter(DateRec."Period Start", PostingDateFilter);

            if DateRec.FindFirst() then begin
                CustomerDateFilter := DateRec."Period Start";
                MonthForExcelHeader := ReturnMonth(Format(CustomerDateFilter, 0, '<Month,2>'));
                YearVar := Date2DMY(CustomerDateFilter, 3);
            end;
        end;
    end;

    var
        CompanyInfo: Record "Company Information";
        Customer: Record Customer;
        Vendor: Record Vendor;
        TempVatEntry: Record "VAT Entry" temporary;
        DateRec: Record Date;
        VatBookFieldsSetup: Record "Smw Vat Book Field Config.";
        TempVatBookFieldsSetup: Record "Smw Vat Book Field Config." temporary;
        windowsLang: Record "Windows Language";
        TempVATAmountLine: Record "VAT Amount Line" temporary;
        SourceName: Text[100];
        SourceCity: Text[100];
        SourceFiscalNo: Code[20];
        SourceVAT: Code[20];
        CustomerNoFilter: Text;
        CustomerDateFilter: Date;
        PostingDateFilter: Text;
        PAGENOCaptionLbl: Label 'Page';
        OfCaptionLbl: Label 'of';
        RecordCount: Integer;
        NoOfRecords: Integer;
        MonthForExcelHeader: Code[20];
        YearVar: Integer;
        CellValue: array[25] of Decimal;
        Field_Codes_Caption: array[25, 4] of Text[250];
        NoOfColumns: Integer;
        SkipColumnCalculation: Boolean;
        SkipRecord: Boolean;
        SkipPurchInv: Boolean;
        SkipPurchCrMemo: Boolean;
        ShowBy: Option "Document Date","Posting Date";
        DateToDisplay: Date;
        LanguageId: Integer;
        textCode: Code[10];
        textLang: Text;
        BillNo: Code[20];
        Sales_Book_Lbl: Label 'Sales Book';
        ExternalDocumentNo: Code[40];
        Company_Lbl: Label 'Company';
        Vat_Registration_No_Lbl: Label 'Vat Registration No.';
        Year_Lbl: Label 'Year';
        Month_Lbl: Label 'Month';
        Without_activity_Lbl: Label 'Without activity';
        Fill_in_YES_if_no_transaction_has_taken_place_during_the_month_Lbl: Label 'Fill in YES if no transaction has taken place during the month.';
        Bill_Lbl: Label 'Bill';
        Buyer_Lbl: Label 'Bayer';
        Bill_No_Lbl: Label 'Bill No.';
        Serial_No_Lbl: Label 'Serial No.';
        Date_Lbl: Label 'Date';
        Trade_name_person_Lbl: Label 'Trade name/person';
        County_Lbl: Label 'County';
        Name_LastName_Lbl: Label 'Name/LastName';
        Explanation1_Lbl: Label 'Explanation:';
        Explanation3_Lbl: Label 'No. of rows can be added in accordance with transaction no.';
        Sale_with_20_Lbl: Label 'Sale with 20%';
        Sale_with_10_Lbl: Label 'Sale with 10%';
        Sale_with_6_Lbl: Label 'Sale with 6%';
        Regime_ravel_agents_travel_Profit_margin_Sale_at_auction_Lbl: Label 'Regime travel agents travel/Profit margin/Sale at auction';
        VAT_autocover_for_sale_Lbl: Label 'VAT autocover for sale';
        Bad_Debt_Lbl: Label 'Bad Debt';
        Box_according_Vat_Lbl: Label 'Box according to VAT Declaration and Payment Form';
        Total_Lbl: Label 'Total Amount';
        CanceledInv_Lbl: Label 'Cancelled Invoice';
        Lab12345_Txt: label '%1%2%3%4%5', Locked = true;

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
        k: Integer;
        CellValueL: Decimal;
        BaseValue_L: Decimal;
        AmountValue_L: Decimal;
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
        TempVatEntry.Reset();

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

        TempVatEntry.SetRange("Entry No.", "VAT Entry"."Entry No.");
        if VatBookFieldsSetup_Par."Gen. Bus. P. G. Filter" <> '' then
            TempVatEntry.SetFilter("Gen. Bus. Posting Group", VatBookFieldsSetup_Par."Gen. Bus. P. G. Filter");
        if VatBookFieldsSetup_Par."VAT Bus. P. G. Filter" <> '' then
            TempVatEntry.SetFilter("VAT Bus. Posting Group", VatBookFieldsSetup_Par."VAT Bus. P. G. Filter");
        if VatBookFieldsSetup_Par."Gen. Prod. P. G. Filter" <> '' then
            TempVatEntry.SetFilter("Gen. Prod. Posting Group", VatBookFieldsSetup_Par."Gen. Prod. P. G. Filter");
        if VatBookFieldsSetup_Par."VAT Prod. P. G. Filter" <> '' then
            TempVatEntry.SetFilter("VAT Prod. Posting Group", VatBookFieldsSetup_Par."VAT Prod. P. G. Filter");
        if VatBookFieldsSetup_Par."Reason Code" <> '' then
            TempVatEntry.SetFilter("Reason Code", VatBookFieldsSetup_Par."Reason Code");

        if TempVatEntry.IsEmpty() then begin
            SkipColumnCalculation := true;
            exit(0);
        end;

        exit("VAT Entry".Base);
    end;

    local procedure InsertFieldAmountsTemporary(VATEntry: Record "VAT Entry"; var pVatBookFieldsSetup: Record "Smw VAT Book Field Config.")
    var
        BaseValue_L: Decimal;
        AmountValue_L: Decimal;
    begin
        if (VATEntry.Base = 0) and (VATEntry.Amount = 0) then
            exit;

        TempVATAmountLine.Reset();
        TempVATAmountLine.SetRange("VAT Identifier", pVatBookFieldsSetup.Code);

        if not TempVATAmountLine.FindFirst() then
            Clear(TempVATAmountLine);

        BaseValue_L := VATEntry.Base;
        AmountValue_L := VATEntry.Amount;

        if pVatBookFieldsSetup."Reverse Sign" then begin
            BaseValue_L := VATEntry.Base * -1;
            AmountValue_L := VATEntry.Amount * -1;
        end;

        TempVATAmountLine."VAT Identifier" := pVatBookFieldsSetup.Code;
        TempVATAmountLine."VAT Base" += BaseValue_L;
        TempVATAmountLine."VAT Amount" += AmountValue_L;
        // TempVATAmountLine."Totaling Type" := pVatBookFieldsSetup."Totaling Type";
        // TempVATAmountLine."Is Calculated" := TRUE;
        if not TempVATAmountLine.Insert() then
            TempVATAmountLine.Modify();
    end;

    local procedure InsertFieldAmountsTemporaryPerTotals(pBaseValue: Decimal; pAmountValue: Decimal; var pVatBookFieldsSetup: Record "Smw Vat Book Field Config.")
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
        j: Integer;
        SkipRecordL: Boolean;
    begin
        SkipRecordL := true;
        for j := 1 to ARRAYLEN(CellValue) do
            if CellValue[j] <> 0 then
                SkipRecordL := false;

        exit(SkipRecordL)
    end;

    procedure AllowPurchaseDocuments()
    var
        VatBookFieldsSetupL: Record "Smw VAT Book Field Config.";
    begin
        SkipPurchInv := true;

        SkipPurchCrMemo := true;
        // ,Invoice,Credit Memo
        VatBookFieldsSetupL.Reset();
        VatBookFieldsSetupL.SetRange("Book Code", 'SALES.BOOK.LABELS');
        VatBookFieldsSetupL.SetRange("Calculate/SUM", true);
        VatBookFieldsSetupL.SetRange("Totaling Type", VatBookFieldsSetupL."Totaling Type"::"Normal Amounts");
        VatBookFieldsSetupL.SetFilter("VAT Entry Type", '%1|%2', VatBookFieldsSetupL."VAT Entry Type"::Purchase, VatBookFieldsSetupL."VAT Entry Type"::" ");
        if VatBookFieldsSetupL.FindSet() then
            repeat
                if (VatBookFieldsSetupL."VAT Entry Type" = VatBookFieldsSetupL."VAT Entry Type"::Purchase) or
                   (VatBookFieldsSetupL."VAT Entry Type" = VatBookFieldsSetupL."VAT Entry Type"::" ") then
                    Case VatBookFieldsSetupL."Document Type" of
                        VatBookFieldsSetupL."Document Type"::Invoice:
                            SkipPurchInv := false;
                        VatBookFieldsSetupL."Document Type"::"Credit Memo":
                            SkipPurchCrMemo := false;
                        VatBookFieldsSetupL."Document Type"::" ":
                            begin
                                SkipPurchInv := false;
                                SkipPurchCrMemo := false;
                            end;
                    end;
            until VatBookFieldsSetupL.Next() = 0;
    end;

    local procedure GetBillNo(VatEntry: Record "VAT Entry"): Code[20]
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        PurchInvHeader: Record "Purch. Inv. Header";
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        BillNoL: Code[20];
    begin
        // Sales Invoice
        if (VatEntry.Type = VatEntry.Type::Sale) then begin
            if (VatEntry."Document Type" = VatEntry."Document Type"::Invoice) then
                if SalesInvoiceHeader.Get(VatEntry."Document No.") then begin
                    BillNoL := SalesInvoiceHeader."Smw Bill No.";
                    exit(BillNoL);
                end;
            //Sales Credit Memo.
            if (VatEntry."Document Type" = VatEntry."Document Type"::"Credit Memo") then
                if SalesCrMemoHeader.Get(VatEntry."Document No.") then begin
                    BillNoL := SalesCrMemoHeader."Smw Bill No.";
                    exit(BillNoL);
                end
        end;
        // Purchase Invoice
        if (VatEntry.Type = VatEntry.Type::Purchase) then begin
            if (VatEntry."Document Type" = VatEntry."Document Type"::Invoice) then
                if PurchInvHeader.Get(VatEntry."Document No.") then begin
                    BillNoL := PurchInvHeader."Smw Bill No.";
                    exit(BillNoL);
                end;
            // Purchase Credit Memo.
            if (VatEntry."Document Type" = VatEntry."Document Type"::"Credit Memo") then
                if PurchCrMemoHdr.Get(VatEntry."Document No.") then begin
                    BillNoL := PurchCrMemoHdr."Smw Bill No.";
                    exit(BillNoL);
                end
        end;
    end;

    local procedure GetCustomerExportedInvoice(): Code[20]
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        CustomerNo: Code[20];
    begin
        case "VAT Entry"."Document Type" of
            "VAT Entry"."Document Type"::Invoice:
                IF SalesInvoiceHeader.GET("VAT Entry"."Smw No. of Exported Invoice") THEN
                    CustomerNo := SalesInvoiceHeader."Sell-to Customer No.";
            "VAT Entry"."Document Type"::"Credit Memo":
                IF SalesCrMemoHeader.GET("VAT Entry"."Smw No. of Exported Invoice") THEN
                    CustomerNo := SalesCrMemoHeader."Sell-to Customer No.";
        end;

        exit(CustomerNo);
    end;

    procedure ReturnUCDNo(DocumentNo: Code[20]): Code[20]
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        if SalesInvoiceHeader.Get(DocumentNo) then
            EXIT(SalesInvoiceHeader."Smw UCD No.");
    end;
}
