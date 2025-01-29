report 51644 "Smw Sales Book KS"
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
    RDLCLayout = './src/Layout/51644.SmwSalesBookKS.rdl';
    Caption = 'Sales Book VAT - Kosova';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("VAT Entry"; "VAT Entry")
        {
            DataItemTableView = SORTING("Document No.", "Posting Date") ORDER(Ascending) WHERE(Type = FILTER(Purchase | Sale), "Document Type" = FILTER(<> " " & <> Payment), "Smw Dont show in VAT Book" = CONST(false));
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
            column(Customer_No; Customer."No.")
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
            column(Sales_Book_Caption; Sales_Book_Lbl)
            {
            }
            column(Company_Caption; Company_Lbl)
            {
            }
            column(Bill_Caption; Bill_CaptionLbl)
            {
            }
            column(Buyer_Caption; Buyer_Lbl)
            {
            }
            column(SalesexemptfromVAT_Caption; SalesexemptfromVATLbl)
            {
            }
            column(TaxableSalesAtTheRateOf18_Caption; TaxableSalesAtTheRateOf18Lbl)
            {
            }
            column(TaxableSalesAtTheRateOf8_Caption; TaxableSalesAtTheRateOf8Lbl)
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
            column(Vat_Registration_No_Caption; Vat_Registration_No_Lbl)
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
            column(Box_according_Vat_Caption; Box_according_to_VAT_CaptionLbl)
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

            trigger OnAfterGetRecord()
            begin
                SourceName := '';
                SourceCity := '';
                SourceVAT := '';
                SourceFiscalNo := '';
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

                TempVatEntryRec.Reset();
                Clear(TempVatEntryRec);
                TempVatEntryRec.DeleteAll();

                TempVatEntryRec.Copy("VAT Entry");
                TempVatEntryRec.Insert();

                if ShowBy = ShowBy::"Document Date" then
                    DateToDisplay := "VAT Entry"."Document Date"
                else
                    DateToDisplay := "VAT Entry"."Posting Date";

                ExternalDocumentNo := '----';
                if ShowByWhichNoVar = ShowByWhichNoVar::"External Document No." then begin
                    if "External Document No." <> '' then
                        ExternalDocumentNo := "External Document No.";
                end else
                    if ShowByWhichNoVar = ShowByWhichNoVar::"Document No." then
                        if "Document No." <> '' then
                            ExternalDocumentNo := "Document No.";

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

                if "VAT Entry".Type = "VAT Entry".Type::Sale then
                    if Customer.Get("VAT Entry"."Bill-to/Pay-to No.") then begin
                        SourceName := Customer."Search Name";
                        SourceVAT := Customer."VAT Registration No.";
                        SourceFiscalNo := Customer."Smw Fiscal No.";
                        SourceCity := Customer.City
                    end;


                if "VAT Entry".Type = "VAT Entry".Type::Purchase then
                    if Vendor.Get("VAT Entry"."Bill-to/Pay-to No.") then begin
                        SourceName := Vendor.Name;
                        SourceVAT := Vendor."VAT Registration No.";
                        SourceFiscalNo := Vendor."Smw Fiscal No.";
                        SourceCity := Vendor.City
                    end;


                // IF "VAT Entry".Type = "VAT Entry".Type::Sale THEN
                //  IF "VAT Entry"."Smw Cancelled Entry" THEN BEGIN
                //    SourceName := CanceledInv_Lbl;
                //    SourceVAT := '0';
                //    //SourceFiscalNo := '0';
                //    SourceCity := '0';
                //  END;

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
                        OptionCaption = 'Document Date,Posting Date';
                        ApplicationArea = All;
                    }
                    field(ShowByWhichNoVarCtrl; ShowByWhichNoVar)
                    {
                        OptionCaption = '"Document No.", "External Document No."';
                        Caption = 'Show by which No.';
                        ToolTip = 'Specifies which number do you want to show on lines: External Document No. or Document No.';
                        ApplicationArea = All;
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
            //Print2Excel:=TRUE;
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
        ShowByWhichNoVar := ShowByWhichNoVar::"Document No.";



        SalesReceivableSetup.Get();
        SalesReceivableSetup.TestField("Smw Sales Book Code");
    end;

    trigger OnPreReport()
    begin
        CompanyInfo.Get();
        CurrReport.Language(LanguageId);
        i := 0;
        C := 177;

        Clear(Field_Codes_Caption);
        VatBookFieldsSetup.SetCurrentKey("Presentation Order");
        VatBookFieldsSetup.SetRange("Book Code", SalesReceivableSetup."Smw Sales Book Code");

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
                        Field_Codes_Caption[i] [2] := textLang;       //Column Name
                        Field_Codes_Caption[i] [3] := VatBookFieldsSetup."Box No.";         //Numri i Kutisë në Deklaratën e TVSH-së
                        Field_Codes_Caption[i] [4] := CopyStr(StrSubstNo(Lab123456_Txt, textLang, C, VatBookFieldsSetup."Box No.", C,
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

            // if DateRec.FindFirst() then begin
            //     CustomerDateFilter := DateRec."Period Start";
            //     MonthForExcelHeader := ReturnMonth(Format(CustomerDateFilter, 0, '<Month,2>'));
            //     YearVar := Date2DMY(CustomerDateFilter, 3);
            // end;
        end;
    end;

    var

        CompanyInfo: Record "Company Information";
        Customer: Record Customer;
        DateRec: Record Date;
        SalesReceivableSetup: Record "Sales & Receivables Setup";
        TempVatBookFieldsSetup: Record "Smw VAT Book Field Config." temporary;
        VatBookFieldsSetup: Record "Smw VAT Book Field Config.";
        TempVATAmountLine: Record "VAT Amount Line" temporary;
        TempVatEntryRec: Record "VAT Entry" temporary;
        Vendor: Record Vendor;
        windowsLang: Record "Windows Language";
        SkipColumnCalculation: Boolean;
        SkipPurchCrMemo: Boolean;
        SkipPurchInv: Boolean;
        SkipRecord: Boolean;
        C: Char;
        //MonthForExcelHeader: Code[20];
        SourceFiscalNo: Code[20];
        SourceVAT: Code[20];
        textCode: Code[20];
        ExternalDocumentNo: Code[40];
        //CustomerDateFilter: Date;
        DateToDisplay: Date;
        CellValue: array[25] of Decimal;
        i: Integer;
        LanguageId: Integer;
        NoOfColumns: Integer;
        NoOfRecords: Integer;
        RecordCount: Integer;
        ShowBy: Option "Document Date","Posting Date";
        ShowByWhichNoVar: Option "Document No.","External Document No.";
        CustomerNoFilter: Text;
        PostingDateFilter: Text;
        SourceCity: Text[100];
        SourceName: Text[100];
        Field_Codes_Caption: array[25, 4] of Text[250];
        textLang: Text[250];
        Bill_CaptionLbl: Label 'Invoice';
        Box_according_to_VAT_CaptionLbl: Label 'Number of the box in VAT declaration form';
        Buyer_Lbl: Label 'Customer';
        Company_Lbl: Label 'Company';
        Date_CaptionLbl: Label 'Date';
        Fiscal_No_CaptionLbl: Label 'Unique Identification Number of Customer';
        Lab123456_Txt: Label '%1%2%3%4%5', Locked = true;
        No_CaptionLbl: Label 'No.';
        Sales_Book_Lbl: Label 'Sales Book';
        SalesexemptfromVATLbl: Label 'Exempt sales from VAT';
        Serial_No_CaptionLbl: Label 'Number of Invoice';
        TaxableSalesAtTheRateOf8Lbl: Label 'Taxable sales at the rate of 8%';
        TaxableSalesAtTheRateOf18Lbl: Label 'Taxable sales at the rate of 18%';
        Trade_name_person_CaptionLbl: Label 'Name of Customer';
        Vat_Registration_No_Lbl: Label 'VAT number of customer';

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
        TempVatEntryRec.Reset();

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

        TempVatEntryRec.SetRange("Entry No.", "VAT Entry"."Entry No.");
        if VatBookFieldsSetup_Par."Gen. Bus. P. G. Filter" <> '' then
            TempVatEntryRec.SetFilter("Gen. Bus. Posting Group", VatBookFieldsSetup_Par."Gen. Bus. P. G. Filter");
        if VatBookFieldsSetup_Par."VAT Bus. P. G. Filter" <> '' then
            TempVatEntryRec.SetFilter("VAT Bus. Posting Group", VatBookFieldsSetup_Par."VAT Bus. P. G. Filter");
        if VatBookFieldsSetup_Par."Gen. Prod. P. G. Filter" <> '' then
            TempVatEntryRec.SetFilter("Gen. Prod. Posting Group", VatBookFieldsSetup_Par."Gen. Prod. P. G. Filter");
        if VatBookFieldsSetup_Par."VAT Prod. P. G. Filter" <> '' then
            TempVatEntryRec.SetFilter("VAT Prod. Posting Group", VatBookFieldsSetup_Par."VAT Prod. P. G. Filter");
        if VatBookFieldsSetup_Par."Reason Code" <> '' then
            TempVatEntryRec.SetFilter("Reason Code", VatBookFieldsSetup_Par."Reason Code");

        if TempVatEntryRec.IsEmpty() then begin
            SkipColumnCalculation := true;
            exit(0);
        end;

        exit("VAT Entry".Base);
    end;

    local procedure InsertFieldAmountsTemporary(VATEntry: Record "VAT Entry"; var pVatBookFieldsSetup: Record "Smw VAT Book Field Config.")
    var
        AmountValue_L: Decimal;
        BaseValue_L: Decimal;
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
        SkipRecordV: Boolean;
        j: Integer;
    begin
        SkipRecordV := true;
        for j := 1 to ArrayLen(CellValue) do
            if CellValue[j] <> 0 then
                SkipRecordV := false;

        exit(SkipRecordV)
    end;

    procedure AllowPurchaseDocuments()
    var
        VatBookFieldsSetupL: Record "Smw VAT Book Field Config.";
    begin
        SkipPurchInv := true;

        SkipPurchCrMemo := true;
        // ,Invoice,Credit Memo
        VatBookFieldsSetupL.Reset();
        VatBookFieldsSetupL.SetRange("Book Code", SalesReceivableSetup."Smw Sales Book Code");
        VatBookFieldsSetupL.SetRange("Calculate/SUM", true);
        VatBookFieldsSetupL.SetRange("Totaling Type", VatBookFieldsSetupL."Totaling Type"::"Normal Amounts");
        VatBookFieldsSetupL.SetFilter("VAT Entry Type", '%1|%2', VatBookFieldsSetupL."VAT Entry Type"::Purchase, VatBookFieldsSetupL."VAT Entry Type"::" ");
        if VatBookFieldsSetupL.FindSet() then
                repeat
                    if (VatBookFieldsSetupL."VAT Entry Type" = VatBookFieldsSetupL."VAT Entry Type"::Purchase) or
                       (VatBookFieldsSetupL."VAT Entry Type" = VatBookFieldsSetupL."VAT Entry Type"::" ") then
                        case VatBookFieldsSetupL."Document Type" of
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
}
