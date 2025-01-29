// // Smartwork Sh.P.K
// // -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// // T           = Line Type: ? = Modification line on Development Request
// // / = Comment on intervention
// // -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// // T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// // -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// // ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New report "Sales Invoice Albania"
report 51642 "Smw Sales Invoice Albania"
{
    DefaultLayout = RDLC;
    RDLCLayout = './src/Layout/51642.SmwSalesInvoiceAlbania.rdl';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.";
            RequestFilterHeading = 'Posted Sales Invoice';
            column(No_SalesInvHdr; "No.")
            {
            }
            column(No_Caption; No_Caption_Lbl)
            {
            }
            column(POstingDate_Captioj; PostingDate_Lbl)
            {
            }
            column(ExternalDocNo_Caption; ExternalDocNo_Caption_Lbl)
            {
            }
            column(Caption_1; Caption_1_Lbl)
            {
            }
            column(Caption_2; Caption_2_Lbl)
            {
            }
            column(Name_Caption; Name_Caption_Lbl)
            {
            }
            column(PhoneNo_Caption; PhoneNo_Caption_Lbl)
            {
            }
            column(FaxNo_Caption; FaxNo_Caption_Lbl)
            {
            }
            column(BillToAddress_Caption; BillToAddress_Caption_Lbl)
            {
            }
            column(BillToName_Caption; BillToName_Caption_Lbl)
            {
            }
            column(VatRegNo_Caption; VatRegNo_Caption_Lbl)
            {
            }
            column(ShippingAgentNaME_Caption; ShippingAgentNaME_Caption_Lbl)
            {
            }
            column(Time_Caption; Time_Caption_Lbl)
            {
            }
            column(PlateNo_caption; PlateNo_Caption_Lbl)
            {
            }
            column(Total_Caption; Total_Caption_Lbl)
            {
            }
            column(TaxableSupplies_Caption; TaxableSupplies_Caption_Lbl)
            {
            }
            column(TotalinDiscount_Caption; TotalinDiscount_Caption_Lbl)
            {
            }
            column(Discount_Caption; Discount_Caption_Lbl)
            {
            }
            column(NonTaxableSupplies_Caption; NonTaxableSupplies_Caption_Lbl)
            {
            }
            column(Footer_Caption; FooterText)
            {
            }
            column(CompanyInfoPicture; CompInf.Picture)
            {
            }
            column(Location_Name; GetLocationName("Location Code"))
            {
            }
            column(Lot_No_Lbl; Lot_No_Lbl)
            {
            }
            column(Exp_Date_Lbl; Exp_Date_Lbl)
            {
            }
            column(Bank_Name_Lbl; Bank_Name_Lbl)
            {
            }
            column(IBAN_Lbl; IBAN_Lbl)
            {
            }
            column(SWIFT_Lbl; SWIFT_Lbl)
            {
            }
            column(Bank_Account_No_Lbl; Bank_Account_No_Lbl)
            {
            }
            dataitem("<CopyLoop>"; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem("<PageLoop>"; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CompanyInfoName; CompInf.Name)
                    {
                    }
                    column(CompanyInfoAddress; CompInf.Address)
                    {
                    }
                    column(CompanyInfoPhoneNo; CompInf."Phone No.")
                    {
                    }
                    column(CompanyInfoFax; CompInf."Fax No.")
                    {
                    }
                    column(CompanyInfoVatRegNo; CompInf."VAT Registration No.")
                    {
                    }
                    column(PostingDate_SalesInvHdr; "Sales Invoice Header"."Posting Date")
                    {
                    }
                    column(ExternalDocNo_SalesInvHdr; "Sales Invoice Header"."External Document No.")
                    {
                    }
                    column(BillToName_SalesInvHdr; "Sales Invoice Header"."Bill-to Name")
                    {
                    }
                    column(BillToAddress_SalesInvHdr; "Sales Invoice Header"."Bill-to Address")
                    {
                    }
                    column(VatRegNo_SalesInvHdr; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(CurrencyCode_SalesInvHdr; "Sales Invoice Header"."Currency Code")
                    {
                    }
                    column(Phone_No_Cust; Cust."Phone No.")
                    {
                    }
                    column(CurrencyCode; CurrencyCode)
                    {
                    }
                    column(LocalCurrencyCode; LocalCurrencyCode)
                    {
                    }
                    column(CurrencyFactor; "Sales Invoice Header"."Currency Factor")
                    {
                    }
                    column(ExchangeRate; ExchangeRate)
                    {
                    }
                    column(Agent_Adress; ShippingAgent2."Smw Address")
                    {
                    }
                    column(Plate_No_Agent; ShippingAgent2."Smw Plate No.")
                    {
                    }
                    column(Agent_Name; ShippingAgent2.Name)
                    {
                    }
                    column(Agent_Vat_Registartion_No; ShippingAgent2."Smw VAT Registration No.")
                    {
                    }
                    column(Report_time; Report_time)
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(No_line_caption; No_line_Caption_Lbl)
                        {
                        }
                        column(No; No)
                        {
                        }
                        column(OneCaption; "1_Caption_Lbl")
                        {
                        }
                        column(two_Caption; "2_Caption_Lbl")
                        {
                        }
                        column(Three_Caption; "3_Caption_Lbl")
                        {
                        }
                        column(Four_Caption; "4_Caption_Lbl")
                        {
                        }
                        column(Five_Caption; "5_Caption_Lbl")
                        {
                        }
                        column(Six_Caption; "6_Caption_Lbl")
                        {
                        }
                        column(Seven_Caption; "7_Caption_Lbl")
                        {
                        }
                        column(eght_Caption; "8_Caption_Lbl")
                        {
                        }
                        column(nine_Caption; "9_Caption_Lbl")
                        {
                        }
                        column(ten_Caption; "10_Caption_Lbl")
                        {
                        }
                        column(DocNo_Caption; DocNo_Caption_Lbl)
                        {
                        }
                        column(Document_No_; "Document No.")
                        {
                        }
                        column(Barcode_Caption; Barcode_Caption_Lbl)
                        {
                        }
                        column(Description_Caption; Description_Caption_Lbl)
                        {
                        }
                        column(Description; Description)
                        {
                        }
                        column(UnitOfMeasure_caption; UnitOfMeasure_Caption_Lbl)
                        {
                        }
                        column(Unit_of_Measure; "Unit of Measure")
                        {
                        }
                        column(Quantity_caption; Quantity_Caption_Lbl)
                        {
                        }
                        column(UnitPrice_caption; UnitPrice_Caption_Lbl)
                        {
                        }
                        column(Unit_Price; UnitPriceWithoutVat)
                        {
                        }
                        column(LineDicscount_caption; LineDicscount_Caption_Lbl)
                        {
                        }
                        column(Line_Discount__; "Line Discount %")
                        {
                        }
                        column(LineAmount_caption; LineAmount_Caption_Lbl)
                        {
                        }
                        column(Line_Amount; "Line Amount")
                        {
                        }
                        column(VatBaseAmount_caption; VatBaseAmount_Caption_Lbl)
                        {
                        }
                        column(VAT_Base_Amount; "VAT Base Amount")
                        {
                        }
                        column(AmountInVat_Caption; AmountInVat_Caption_Lbl)
                        {
                        }
                        column(Amount; Amount)
                        {
                        }
                        column(Amount_Including_VAT; "Amount Including VAT")
                        {
                        }
                        column(TotalValueWithoutVat; TotalValueWithoutVat)
                        {
                        }
                        column(ToTalValueWithVat; ToTalValueWithVat)
                        {
                        }
                        column(TotalVat; TotalVat)
                        {
                        }
                        column(ToTalValueWithVatLCY; ToTalValueWithVatLCY)
                        {
                        }
                        column(TotalValueWithoutVatLCY; TotalValueWithoutVatLCY)
                        {
                        }
                        column(TotalVatLCY; TotalVatLCY)
                        {
                        }
                        column(AmountBeforeDiscount; AmountBeforeDiscount)
                        {
                        }
                        column(VatBeforeDiscount; VatBeforeDiscount)
                        {
                        }
                        column(AmountInclVatBeforeDiscount; AmountInclVatBeforeDiscount)
                        {
                        }
                        column(TotalAmountBeforeDiscount; TotalAmountBeforeDiscount)
                        {
                        }
                        column(TotalVATBeforeDiscount; TotalVATBeforeDiscount)
                        {
                        }
                        column(TotalAmountIncVatBeforeDiscount; TotalAmountIncVatBeforeDiscount)
                        {
                        }
                        column(DiscountAmount; DiscountAmount)
                        {
                        }
                        column(DiscountVAt; DiscountVAt)
                        {
                        }
                        column(DiscountAmountInclVat; DiscountAmountInclVat)
                        {
                        }
                        column(Total_inlek_Caption; Total_inlek_Caption_Lbl)
                        {
                        }
                        column(Accepted_Caption; Accepted_Caption_Lbl)
                        {
                        }
                        column(Invoiced_Caption; Invoiced_Caption_Lbl)
                        {
                        }
                        column(ThePersonInCharge_Caption; ThePersonInCharge_Caption_Lbl)
                        {
                        }
                        column(Course_caption; Course_caption_Lbl)
                        {
                        }
                        column(Name_Surname_Signature_Caption; Name_Surname_Signature_Caption_Lbl)
                        {
                        }
                        // #pragma warning disable AL0432
                        //                         column(CrossReferenceNo_SalesInvoiceLine; "Cross-Reference No.")
                        // #pragma warning restore AL0432
                        //                         {
                        //                         }
                        column(CrossReferenceNo_SalesInvoiceLine; "Sales Invoice Line"."Item Reference No.")
                        {
                        }
                        column(TaxablesLcy; TaxablesLcy)
                        {
                        }
                        column(NonTaxablesLcy; NonTaxablesLcy)
                        {
                        }
                        column(Item_No; "No.")
                        {
                        }
                        column(Quantity; Quantity)
                        {
                        }
                        column(LineNo_SalesInvLine; "Line No.")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            No := No + 1;
                            UnitPriceWithoutVat := 0;
                            UnitPriceWithVat := 0;

                            AmountBeforeDiscount := Amount + "Sales Invoice Line"."Inv. Discount Amount";
                            AmountInclVatBeforeDiscount := "Amount Including VAT" + "Sales Invoice Line"."Inv. Discount Amount";
                            VatBeforeDiscount := AmountInclVatBeforeDiscount - AmountBeforeDiscount;

                            TotalAmountBeforeDiscount += AmountBeforeDiscount;
                            TotalAmountIncVatBeforeDiscount += AmountInclVatBeforeDiscount;
                            TotalVATBeforeDiscount += VatBeforeDiscount;

                            ToTalValueWithVat += "Amount Including VAT";
                            TotalValueWithoutVat += Amount;
                            TotalVat += "Amount Including VAT" - Amount;

                            DiscountAmount := TotalAmountBeforeDiscount - TotalValueWithoutVat;
                            DiscountAmountInclVat := AmountInclVatBeforeDiscount - ToTalValueWithVat;
                            DiscountVAt := TotalVATBeforeDiscount - TotalVat;

                            if ("Amount Including VAT" - Amount) <> 0 then
                                TaxableS += Amount;
                            if ("Amount Including VAT" - Amount) = 0 then
                                NonTaxableS += Amount;

                            if "Sales Invoice Header"."Currency Code" <> '' then begin
                                ToTalValueWithVatLCY += CurrExchRate.ExchangeAmtFCYToLCY(GetDate("Sales Invoice Header"), "Sales Invoice Header"."Currency Code", "Amount Including VAT", "Sales Invoice Header"."Currency Factor");
                                TotalValueWithoutVatLCY += CurrExchRate.ExchangeAmtFCYToLCY(GetDate("Sales Invoice Header"), "Sales Invoice Header"."Currency Code", Amount, "Sales Invoice Header"."Currency Factor");
                                TotalVatLCY += CurrExchRate.ExchangeAmtFCYToLCY(GetDate("Sales Invoice Header"), "Sales Invoice Header"."Currency Code", TotalVat, "Sales Invoice Header"."Currency Factor");
                                TaxablesLcy := CurrExchRate.ExchangeAmtFCYToLCY(GetDate("Sales Invoice Header"), "Sales Invoice Header"."Currency Code", TaxableS, "Sales Invoice Header"."Currency Factor");
                                NonTaxablesLcy := CurrExchRate.ExchangeAmtFCYToLCY(GetDate("Sales Invoice Header"), "Sales Invoice Header"."Currency Code", NonTaxableS, "Sales Invoice Header"."Currency Factor");
                            end;
                            GeneralLedgerSetup.Get();
                            if "Sales Invoice Header"."Currency Code" <> '' then begin
                                Currency.Get("Sales Invoice Header"."Currency Code");
                                CurrencyCode := Currency.Code;
                                LocalCurrencyCode := GeneralLedgerSetup.GetCurrencyCode('');
                            end else begin
                                CurrencyCode := GeneralLedgerSetup.GetCurrencyCode('');
                                LocalCurrencyCode := '';
                            end;

                            CalculatePricesWithAndWithoutVat(UnitPriceWithoutVat, UnitPriceWithVat);
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                        CopyText := Copy_Txt;
                        OutputNo += 1;
                    end;

                    No := 0;
                    TaxableS := 0;
                    NonTaxableS := 0;
                    TaxablesLcy := 0;
                    NonTaxablesLcy := 0;
                    ToTalValueWithVat := 0;
                    TotalValueWithoutVat := 0;
                    TotalVat := 0;
                    ToTalValueWithVatLCY := 0;
                    TotalValueWithoutVatLCY := 0;
                    TotalVatLCY := 0;
                    AmountBeforeDiscount := 0;
                    AmountInclVatBeforeDiscount := 0;
                    VatBeforeDiscount := 0;
                    TotalAmountBeforeDiscount := 0;
                    TotalVATBeforeDiscount := 0;
                    TotalAmountIncVatBeforeDiscount := 0;
                    DiscountAmount := 0;
                    DiscountVAt := 0;
                    DiscountAmountInclVat := 0;
                    GetSalesHeaderAgentData("Sales Invoice Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + Cust."Invoice Copies" + 1;
                    if NoOfLoops <= 0 then
                        NoOfLoops := 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                ExchangeRate := 1;
                if "Sales Invoice Header"."Currency Factor" <> 0 then
                    ExchangeRate := Round(1 / "Sales Invoice Header"."Currency Factor", 0.00001);

                if not Cust.Get("Bill-to Customer No.") then
                    Clear(Cust);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    group("Agjenti i Shitjes")
                    {
                        Caption = 'Shipping Agent';
                        field("Agent_Name"; ShippingAgent.Code)
                        {
                            Caption = 'Shipping Agent Code';
                            TableRelation = "Shipping Agent";
                            ApplicationArea = All;

                            trigger OnValidate()
                            begin
                                //ValidateShippingAgent();
                                if not ShippingAgent.Get(ShippingAgent.Code) then
                                    Clear(ShippingAgent);
                            end;
                        }
                        field("ShippingAgent.Name"; ShippingAgent.Name)
                        {
                            Caption = 'Shipping Agent Name';
                            ApplicationArea = All;
                        }
                        field(Adress; ShippingAgent."Smw Address")
                        {
                            Caption = 'Adress';
                            ApplicationArea = All;
                        }
                        field(Plate_No; ShippingAgent."Smw Plate No.")
                        {
                            Caption = 'Plate No.';
                            ApplicationArea = All;
                        }
                        field(Vat_Registartion_No; ShippingAgent."Smw VAT Registration No.")
                        {
                            Caption = 'Vat Registartion No.';
                            ApplicationArea = All;
                        }
                    }
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
                    field(NoOfCopiesCtrl; NoOfCopies)
                    {
                        Caption = 'No. of Copies';
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        LanguageID := 1052;
    end;

    trigger OnPreReport()
    begin
        CompInf.Get();
        CompInf.CalcFields(Picture);

        CurrReport.Language(LanguageID);

        FooterText := STRSUBSTNO(Caption_Footer_Lbl, CompInf."Smw Dpt. Code", CompInf."Smw Dpt. Issue Date");
    end;

    var
        ShippingAgent: Record "Shipping Agent";
        ShippingAgent2: Record "Shipping Agent";
        CompInf: Record "Company Information";
        Cust: Record Customer;
        CurrExchRate: Record "Currency Exchange Rate";
        Currency: Record Currency;
        GeneralLedgerSetup: Record "General Ledger Setup";
        Report_time: Time;
        No: Integer;
        TaxableS: Decimal;
        NonTaxableS: Decimal;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        OutputNo: Integer;
        ToTalValueWithVat: Decimal;
        TotalValueWithoutVat: Decimal;
        TotalVat: Decimal;
        ToTalValueWithVatLCY: Decimal;
        TotalValueWithoutVatLCY: Decimal;
        TotalVatLCY: Decimal;
        CurrencyCode: Code[10];
        LocalCurrencyCode: Code[10];
        UnitPriceWithVat: Decimal;
        UnitPriceWithoutVat: Decimal;
        ExchangeRate: Decimal;
        LanguageID: Integer;
        FooterText: Text;
        AmountBeforeDiscount: Decimal;
        VatBeforeDiscount: Decimal;
        AmountInclVatBeforeDiscount: Decimal;
        TotalAmountBeforeDiscount: Decimal;
        TotalVATBeforeDiscount: Decimal;
        TotalAmountIncVatBeforeDiscount: Decimal;
        DiscountAmount: Decimal;
        DiscountVAt: Decimal;
        DiscountAmountInclVat: Decimal;
        TaxablesLcy: Decimal;
        NonTaxablesLcy: Decimal;
        No_Caption_Lbl: Label 'Document No.';
        PostingDate_Lbl: Label 'Posting Date';
        ExternalDocNo_Caption_Lbl: Label 'External Document No.';
        BillToName_Caption_Lbl: Label 'Bill To Name';
        BillToAddress_Caption_Lbl: Label 'Address';
        VatRegNo_Caption_Lbl: Label 'Vat Registration No.';
        Name_Caption_Lbl: Label 'Name';
        PhoneNo_Caption_Lbl: Label 'Phone No.';
        FaxNo_Caption_Lbl: Label 'Fax No.';
        Caption_1_Lbl: Label 'SALES INVOICE';
        Caption_2_Lbl: Label 'Sales Location';
        ShippingAgentNaME_Caption_Lbl: Label 'Shipping Agent';
        Time_Caption_Lbl: Label 'Time';
        PlateNo_Caption_Lbl: Label 'Plate No.';
        DocNo_Caption_Lbl: Label 'Item No.';
        Barcode_Caption_Lbl: Label 'Barcode';
        Description_Caption_Lbl: Label 'Description';
        UnitOfMeasure_Caption_Lbl: Label 'Unit of  Measure';
        Quantity_Caption_Lbl: Label 'Quantity';
        UnitPrice_Caption_Lbl: Label 'Unit Price';
        LineDicscount_Caption_Lbl: Label 'Line Discount %';
        LineAmount_Caption_Lbl: Label 'Line Amount';
        VatBaseAmount_Caption_Lbl: Label 'Vat Base Amount';
        AmountInVat_Caption_Lbl: Label 'Line Amount Including VAT';
        Total_Caption_Lbl: Label 'TOTAL';
        Total_inlek_Caption_Lbl: Label 'Total in:';
        TaxableSupplies_Caption_Lbl: Label 'Taxable supplies';
        NonTaxableSupplies_Caption_Lbl: Label 'Non-Taxable supplies';
        Caption_Footer_Lbl: Label 'Use of this invoice is emitted by Dpt No. %1 dated %2', Comment = '%1=Dept. No. Value, %2=Dept Date Value';
        Accepted_Caption_Lbl: Label 'Accepted';
        Invoiced_Caption_Lbl: Label 'Invoiced';
        ThePersonInCharge_Caption_Lbl: Label 'The Person In Charge';
        Name_Surname_Signature_Caption_Lbl: Label '(Name, Surname, Signature)';
        No_line_Caption_Lbl: Label ' No.';
        Lot_No_Lbl: Label 'Lot No.';
        Exp_Date_Lbl: Label 'Expiration Date';
        Bank_Name_Lbl: Label 'Bank Name';
        Bank_Account_No_Lbl: Label 'Bank Account No';
        IBAN_Lbl: Label 'IBAN';
        SWIFT_Lbl: Label 'SWIFT';
        Copy_Txt: Label 'COPY';
        Discount_Caption_Lbl: Label 'Discount';
        TotalinDiscount_Caption_Lbl: Label 'Total After Discount';
        Course_caption_Lbl: Label 'Course';
        "1_Caption_Lbl": Label '1';
        "2_Caption_Lbl": Label '2';
        "3_Caption_Lbl": Label '3';
        "4_Caption_Lbl": Label '4';
        "5_Caption_Lbl": Label '5';
        "6_Caption_Lbl": Label '6';
        "7_Caption_Lbl": Label '7';
        "8_Caption_Lbl": Label '8 = 6 * 7';
        "9_Caption_Lbl": Label '9 = 8 * 20%';
        "10_Caption_Lbl": Label '10 =  8 + 9';

    local procedure GetSalesHeaderAgentData(pSalesInvoiceHeader: Record "Sales Invoice Header")
    var
        ShippingAgent3: Record "Shipping Agent";
        ShippingAgentCode: Code[10];
    begin
        ShippingAgentCode := '';
        if pSalesInvoiceHeader."Shipping Agent Code" <> '' then
            ShippingAgentCode := pSalesInvoiceHeader."Shipping Agent Code";

        if (ShippingAgent.Code <> '') and (ShippingAgentCode = '') then
            ShippingAgentCode := ShippingAgent.Code;

        if ShippingAgent3.Get(ShippingAgentCode) then begin
            ShippingAgent2.Name := ShippingAgent3.Name;
            ShippingAgent2."Smw Address" := ShippingAgent3."Smw Address";
            ShippingAgent2."Smw VAT Registration No." := ShippingAgent3."Smw VAT Registration No.";
            ShippingAgent2."Smw Plate No." := ShippingAgent3."Smw Plate No.";
        end else begin
            ShippingAgent2.Name := CopyStr(CompInf.Name, 1, MaxStrLen(ShippingAgent2.Name));
            ShippingAgent2."Smw Address" := CopyStr(CompInf.Address, 1, MaxStrLen(ShippingAgent2."Smw Address"));
            ShippingAgent2."Smw VAT Registration No." := CompInf."VAT Registration No.";
            ShippingAgent2."Smw Plate No." := CompInf."Smw Plate No.";
        end;
    end;

    local procedure GetLocationName(LocationCode: Code[20]) LocationName: Text
    var
        Location: Record Location;
    begin
        if Location.Get(LocationCode) then
            LocationName := Location.Name;
    end;

    local procedure GetDate(SalesInvoiceHeader: Record "Sales Invoice Header"): Date
    begin
        if SalesInvoiceHeader."Posting Date" <> 0D then
            exit(SalesInvoiceHeader."Posting Date");
        exit(WorkDate());
    end;

    local procedure CalculatePricesWithAndWithoutVat(var PriceWithoutVat: Decimal; var PriceWithVat: Decimal)
    var
        VatFactor: Decimal;
    begin
        if ("Sales Invoice Line"."Unit Price" = 0) or ("Sales Invoice Line"."VAT %" = 0) then begin
            PriceWithoutVat := "Sales Invoice Line"."Unit Price";
            PriceWithVat := "Sales Invoice Line"."Unit Price";
            exit;
        end;

        if "Sales Invoice Header"."Currency Code" = '' then
            Currency.InitRoundingPrecision()
        else
            Currency.Get("Sales Invoice Header"."Currency Code");

        VatFactor := 1 + "Sales Invoice Line"."VAT %" / 100;
        if VatFactor = 0 then
            VatFactor := 1;

        if "Sales Invoice Line"."VAT Calculation Type" = "Sales Invoice Line"."VAT Calculation Type"::"Full VAT" then
            VatFactor := 1;

        if "Sales Invoice Header"."Prices Including VAT" then begin
            VatFactor := 1 / VatFactor;
            PriceWithoutVat := Round("Sales Invoice Line"."Unit Price" * VatFactor, Currency."Unit-Amount Rounding Precision");
            PriceWithVat := "Sales Invoice Line"."Unit Price";
        end else

            if not "Sales Invoice Header"."Prices Including VAT" then begin
                PriceWithoutVat := "Sales Invoice Line"."Unit Price";
                PriceWithVat := Round("Sales Invoice Line"."Unit Price" * VatFactor, Currency."Unit-Amount Rounding Precision");
            end;
    end;
}
