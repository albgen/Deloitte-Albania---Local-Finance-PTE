report 51646 "Smw InvoiceFromTaxablePersons"
{
    // // Smartwork Sh.P.K
    // // -------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // // T           = Line Type: ? = Modification line on Development Request
    // // / = Comment on intervention
    // // -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
    // // T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
    // // -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
    // // ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New report "Sales Invoice Albania"
    DefaultLayout = RDLC;
    RDLCLayout = './src/Layout/51646.SmwInvoiceFromTaxablePersonsKS.rdl';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.";
            RequestFilterHeading = 'Posted Sales Invoice';
            column(No_SalesInvHdr; "No.")
            {
            }
            column(Caption_1; Caption_1_Lbl)
            {
            }
            column(RecipientsUniqueIdentificatioNumber_Caption; RecipientsUniqueIdentificatioNumber_Caption_Lbl)
            {
            }
            column(RecipientsVATNumber_Caption; RecipientsVATNumber_Caption_Lbl)
            {
            }
            column(SuppliersUniqueIdentificationNumber_Cation; SuppliersUniqueIdentificationNumber_Cation_Lbl)
            {
            }
            column(NoContact_Caption; NoContact_Lbl)
            {
            }
            column(ContactPerson_Caption; ContactPerson_Lbl)
            {
            }
            column(Email_Caption; Email_Lbl)
            {
            }
            column(SuppliersVATNumber_Caption; SuppliersVATNumber_Caption_Lbl)
            {
            }
            column(BankAccountNumbe_Caption; BankAccountNumbe_Lbl)
            {
            }
            column(InvoiceOrdinalNumb_Caption; InvoiceOrdinalNumb_Lbl)
            {
            }
            column(DateIssuInv_Caption; DateIssuInv_Lbl)
            {
            }
            column(DateSsupply_Caption; DateSsupply_Lbl)
            {
            }
            column(CompanyInfoPicture; CompInf.Picture)
            {
            }
            dataitem("<CopyLoop>"; "Integer")
            {
                DataItemTableView = sorting(Number);
                dataitem("<PageLoop>"; "Integer")
                {
                    DataItemTableView = sorting(Number) where(Number = const(1));
                    column(CompanyInfoName; CompInf.Name)
                    {
                    }
                    column(CompanyInfoAddress; CompInf.Address)
                    {
                    }
                    column(CompanyInfoAddress2; CompInf."Address 2")
                    {
                    }
                    column(CompanyInfoPhoneNo; CompInf."Phone No.")
                    {
                    }
                    column(CompanyInfoContry; CompanyContryName)
                    {
                    }
                    column(CompanyInfoVatRegNo; CompInf."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompInf."Bank Account No.")
                    {
                    }
                    column(CompanyInfoEmail; CompInf."E-Mail")
                    {
                    }
                    column(CompanyInfoFaxNo; CompInf."Smw Fiscal No.")
                    {
                    }
                    column(PostingDate_SalesInvHdr; "Sales Invoice Header"."Posting Date")
                    {
                    }
                    column(Documentdate_SalesInvHdr; "Sales Invoice Header"."Document Date")
                    {
                    }
                    column(BillToName_SalesInvHdr; "Sales Invoice Header"."Bill-to Name")
                    {
                    }
                    column(BillToAddress_SalesInvHdr; "Sales Invoice Header"."Bill-to Address")
                    {
                    }
                    column(BillToAddress2_SalesInvHdr; "Sales Invoice Header"."Bill-to Address 2")
                    {
                    }
                    column(VatRegNo_SalesInvHdr; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(BillToContry_SalesInvHdr; CustomerContryName)
                    {
                    }
                    column(BillToContact_SalesInvHdr; "Sales Invoice Header"."Bill-to Contact")
                    {
                    }
                    column(DueDate_SalesInvHdr; "Sales Invoice Header"."Due Date")
                    {
                    }
                    column(PaymentMethod_SalesInvHeader; "Sales Invoice Header"."Payment Method Code")
                    {
                    }
                    column(SipmentDate_SalesInvHdr; "Sales Invoice Header"."Shipment Date")
                    {
                    }
                    column(CustomerFiskalNo; CustomerFiscalNo)
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(LocalLegislationRule; LocalLegislationRuleText)
                    {
                    }
                    column(InvoiceFor_Caption; InvoiceFor_Lbl)
                    {
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = field("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = sorting("Document No.", "Line No.");
                        column(No_line_caption; No_line_Caption_Lbl)
                        {
                        }
                        column(No; No)
                        {
                        }
                        column(ItemCode_Caption; ItemCode_Lbl)
                        {
                        }
                        column(TaxableValueBeforeDiscount_Caption; TaxableValueBeforeDiscount_Lbl)
                        {
                        }
                        column(DiscountInPercent_Caption; DiscountInPercent_Lbl)
                        {
                        }
                        column(Description; Description)
                        {
                        }
                        column(TaxableValueAfterDiscount_Caption; TaxableValueAfterDiscount_Lbl)
                        {
                        }
                        column(VatRate_Caption; VatRate_Lbl)
                        {
                        }
                        column(Description_Caption; Description_Caption_Lbl)
                        {
                        }
                        column(VatinValue_Caption; VatinValue_Caption_Lbl)
                        {
                        }
                        column(UnitOfMeasure_caption; UnitOfMeasure_Caption_Lbl)
                        {
                        }
                        column(TotalTaxableValue_Caption; TotalTaxableValue_Lbl)
                        {
                        }
                        column(TotalVATvalue_Caption; TotalVATvalue_Lbl)
                        {
                        }
                        column(TotalValueVAT_Caption; TotalValueVAT_Lbl)
                        {
                        }
                        column(ValueaPaid_Caption; ValueaPaid_Lbl)
                        {
                        }
                        column(TotalDebt_Caption; TotalDebt_Lbl)
                        {
                        }
                        column(TotalSupplyValue_Caption; TotalSupplyValue_Lbl)
                        {
                        }
                        column(PaymentMethod_Caption; PaymentMethod_Lbl)
                        {
                        }
                        column(Discoun_Caption; Discoun_Lbl)
                        {
                        }
                        column(PaymentDate_Caption; PaymentDate_Lbl)
                        {
                        }
                        column(Unit_of_Measure; "Unit of Measure")
                        {
                        }
                        column(Quantity_caption; Quantity_Caption_Lbl)
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
                        column(Quantity; Quantity)
                        {
                        }
                        column(LineAmount_Caption; LineAmount_Caption_Lbl)
                        {
                        }
                        column(LineNo_SalesInvLine; "Line No.")
                        {
                        }
                        column(LineDiscountPercent_SalesInvLine; "Sales Invoice Line"."Line Discount %")
                        {
                        }
                        column(VatPercent_SalesInvLine; "Sales Invoice Line"."VAT %")
                        {
                        }
                        column(Item_No; "No.")
                        {
                        }
                        column(UnitPrice_caption; UnitPrice_Caption_Lbl)
                        {
                        }
                        column(Unit_Price; "Unit Price")
                        {
                        }
                        column(InvoiceDiscountAmount; "Inv. Discount Amount")
                        {
                        }
                        column(ValueTaxableBeforeDiscount; ValueTaxableBeforeDiscount)
                        {
                        }
                        column(ValueTaxableAfterDiscount; ValueTaxableAfterDiscount)
                        {
                        }
                        column(VatValue; VatValue)
                        {
                        }
                        column(LineTotal; LineTotal)
                        {
                        }
                        column(UnitPriceWithoutVat; UnitPriceWithoutVat)
                        {
                        }
                        column(TotalTaxableValueAfterDiscount; TotalTaxableValueAfterDiscount)
                        {
                        }
                        column(TotalVatValue; TotalVatValue)
                        {
                        }
                        column(TotalLineTotals; TotalLineTotals)
                        {
                        }
                        column(TotalDiscountAmountInclVat; TotalDiscountAmountInclVat)
                        {
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                        }
                        column(PaidValue; PaidValue)
                        {
                        }
                        column(PrepaimentLine; PrepaimentLine)
                        {
                        }

                        trigger OnAfterGetRecord()
                        var
                            VATPostingSetup: Record "VAT Posting Setup";
                        begin
                            No := No + 1;
                            UnitPriceWithoutVat := 0;
                            UnitPriceWithVat := 0;
                            ValueTaxableAfterDiscount := 0;
                            ValueTaxableBeforeDiscount := 0;
                            VatValue := 0;
                            LineTotal := 0;

                            PrepaimentLine := "Sales Invoice Line"."Prepayment Line";
                            if PrepaimentLine then
                                PaidValue += "Sales Invoice Line"."Amount Including VAT" * (-1)
                            else begin
                                CalculatePricesWithAndWithoutVat(UnitPriceWithoutVat, UnitPriceWithVat);
                                ValueTaxableBeforeDiscount := Quantity * UnitPriceWithoutVat;
                                CalculateValueTaxAfterDiscount(ValueTaxableAfterDiscount);
                                CalculateTotalLine(LineTotal);
                                VatValue := LineTotal - ValueTaxableAfterDiscount;

                                TotalTaxableValueAfterDiscount += ValueTaxableAfterDiscount;
                                TotalVatValue += VatValue;
                                TotalLineTotals += LineTotal;

                                CaculateTotalDiscounts();
                                TotalAmountInclVAT += "Sales Invoice Line"."Amount Including VAT";

                                VATAmountLine.Init();
                                VATAmountLine."VAT Identifier" := "VAT Identifier";
                                VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                                VATAmountLine."Tax Group Code" := "Tax Group Code";
                                VATAmountLine."VAT %" := "VAT %";
                                VATAmountLine."Line Amount" := ValueTaxableBeforeDiscount;
                                VATAmountLine."VAT Base" := ValueTaxableAfterDiscount;
                                VATAmountLine."VAT Amount" := VatValue;
                                VATAmountLine."Amount Including VAT" := LineTotal;
                                //if "Allow Invoice Disc." then
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                                VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                                VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                                if VATPostingSetup.Get("VAT Bus. Posting Group", "VAT Prod. Posting Group") then begin
                                    if VATAmountLine."VAT Identifier" = '' then
                                        VATAmountLine."VAT Identifier" := VATPostingSetup."VAT Identifier";
                                    VATAmountLine."Tax Category" := VATPostingSetup."Tax Category";
                                end;
                                if VATAmountLine."VAT Identifier" = '' then
                                    VATAmountLine."VAT Identifier" := 'Blank';
                                VATAmountLine.InsertLine();
                                //end;
                            end;
                        end;

                        trigger OnPreDataItem()
                        begin
                            VATAmountLine.Reset();
                            VATAmountLine.DeleteAll();
                        end;
                    }
                    dataitem(VATAmountLine; "VAT Amount Line")
                    {
                        DataItemTableView = sorting("VAT Identifier", "VAT Calculation Type", "Tax Group Code", "Use Tax", Positive);
                        UseTemporary = true;
                        column(InvoiceDetails_Caption; InvoiceDetails_lbl)
                        {
                        }
                        column(VAT_Rate_Caption; VAT_Rate_Lbl)
                        {
                        }
                        column(TotalTaxableValueBeforeDiscount_Caption; TotalTaxableValueBeforeDiscount_Lbl)
                        {
                        }
                        column(TotalSuplyValue_Caption; TotalSuplyValue_Lbl)
                        {
                        }
                        column(TotalValueDiscount_Caption; TotalValueDiscount_Lbl)
                        {
                        }
                        column(TotalTaxableValueAfterDiscount_Caption; TotalTaxableValueAfterDiscount_Lbl)
                        {
                        }
                        column(TotalValueINVAT_Caption; TotalValueINVAT_Lbl)
                        {
                        }
                        column(LineAmount; "Line Amount")
                        {
                        }
                        column(VATBase; "VAT Base")
                        {
                        }
                        column(VATAmount; "VAT Amount")
                        {
                        }
                        column(AmountIncludingVat; "Amount Including VAT")
                        {
                        }
                        column(VatPercent; "VAT %")
                        {
                        }
                        column(VatIdentifier; "VAT Identifier")
                        {
                            IncludeCaption = true;
                        }
                        column(VATAmountLine_TotalDiscountAmountInclVat; TotalDiscountAmountInclVat)
                        {
                        }
                    }
                }

                trigger OnAfterGetRecord()
                var
                begin
                    if Number > 1 then begin
                        CopyText := Copy_Txt;
                        OutputNo += 1;
                    end;

                    No := 0;
                    TotalTaxableValueAfterDiscount := 0;
                    TotalVatValue := 0;
                    TotalLineTotals := 0;

                    TotalDiscountAmount := 0;
                    TotalDiscountAmountInclVat := 0;
                    TotalDiscountVat := 0;
                    TotalAmountInclVAT := 0;
                    PaidValue := 0;
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
            var
                Customer: Record Customer;
                CountryRegion: Record "Country/Region";
                LocalLegislationRule: Record "Smw Local Legislation Rule";
            begin
                CustomerFiscalNo := '';
                CustomerContryName := '';
                LocalLegislationRuleText := '';

                if Customer.Get("Sales Invoice Header"."Bill-to Customer No.") then
                    CustomerFiscalNo := Customer."Smw Fiscal No.";

                if CountryRegion.Get(CompInf."Country/Region Code") then
                    CompanyContryName := CountryRegion.Name;

                if CountryRegion.Get("Sales Invoice Header"."Bill-to Country/Region Code") then
                    CustomerContryName := CountryRegion.Name;

                if LocalLegislationRule.Get(LocalLegislationRuleCode) then
                    LocalLegislationRuleText := LocalLegislationRule.Description;
            end;

            trigger OnPreDataItem()
            begin
                CompanyContryName := '';
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    group("Agjenti i Shitjes")
                    {
                        Caption = 'Shipping Agent';
                    }
                    field(LanguageIdCtrl; LanguageID)
                    {
                        Caption = 'Choose Language';
                        ApplicationArea = All;

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            LanguageManagement: Codeunit Language;
                        begin
                            LanguageManagement.LookupApplicationLanguageId(LanguageID);
                            if LanguageID <> 0 then begin
                                Text := Format(LanguageID);
                                exit(true);
                            end;
                        end;
                    }
                    field(NoOfCopiesT; NoOfCopies)
                    {
                        Caption = 'No. of Copies';
                        ApplicationArea = All;
                    }
                    field("Local Legislation Rule"; LocalLegislationRuleCode)
                    {
                        Caption = 'Local Legislation Rule';
                        TableRelation = "Smw Local Legislation Rule";
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
    end;

    var
        CompInf: Record "Company Information";
        Cust: Record Customer;
        No: Integer;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        OutputNo: Integer;
        Caption_1_Lbl: Label 'TAX INVOICE';
        ItemCode_Lbl: Label 'Item/Service Code';
        Description_Caption_Lbl: Label 'Description of the item/service';
        UnitOfMeasure_Caption_Lbl: Label 'Unit';
        Quantity_Caption_Lbl: Label 'Quantity';
        UnitPrice_Caption_Lbl: Label 'Price without VAT';
        TaxableValueBeforeDiscount_Lbl: Label 'Taxable amount before discount';
        DiscountInPercent_Lbl: Label 'Discount in % ';
        TaxableValueAfterDiscount_Lbl: Label 'Taxable amount after discount';
        VatRate_Lbl: Label 'VAT rate  0%, 8% or 18% ';
        LineAmount_Caption_Lbl: Label 'Taxable Amount';
        VatinValue_Caption_Lbl: Label 'VAT Amount';
        AmountInVat_Caption_Lbl: Label 'Total';
        No_line_Caption_Lbl: Label ' No.';
        Copy_Txt: Label 'COPY';
        LocalLegislationRuleCode: Text[250];
        UnitPriceWithVat: Decimal;
        UnitPriceWithoutVat: Decimal;
        LanguageID: Integer;
        RecipientsVATNumber_Caption_Lbl: Label 'Recipient''s VAT Number: ';
        RecipientsUniqueIdentificatioNumber_Caption_Lbl: Label 'Unique identification number: ';
        SuppliersUniqueIdentificationNumber_Cation_Lbl: Label 'Unique identification number: ';
        SuppliersVATNumber_Caption_Lbl: Label 'Supplier''s VAT Number: ';
        BankAccountNumbe_Lbl: Label 'Bank Account Number:';
        Email_Lbl: Label 'Email:';
        NoContact_Lbl: Label 'Contact No: ';
        ContactPerson_Lbl: Label 'Contact person: ';
        InvoiceFor_Lbl: Label 'Invoice For: ';
        ValueTaxableBeforeDiscount: Decimal;
        ValueTaxableAfterDiscount: Decimal;
        VatValue: Decimal;
        LineTotal: Decimal;
        InvoiceDetails_Lbl: Label 'Invoice details: ';
        TotalTaxableValue_Lbl: Label 'Total taxable amount';
        TotalVATvalue_Lbl: Label 'Total VAT in Value';
        VAT_Rate_Lbl: Label 'VAT rate';
        TotalTaxableValueBeforeDiscount_Lbl: Label 'Total taxable amount before discount';
        TotalValueDiscount_Lbl: Label 'Total discount amount';
        TotalTaxableValueAfterDiscount_Lbl: Label 'Total taxable amount after discount';
        TotalValueVAT_Lbl: Label 'Total VAT amount';
        ValueaPaid_Lbl: Label 'Paid amount';
        TotalDebt_Lbl: Label 'Total Debt';
        PaymentMethod_Lbl: Label 'Payment method:';
        PaymentDate_Lbl: Label 'Payment Date:';
        TotalTaxableValueAfterDiscount: Decimal;
        TotalVatValue: Decimal;
        TotalLineTotals: Decimal;
        TotalDiscountAmount: Decimal;
        TotalDiscountAmountInclVat: Decimal;
        TotalDiscountVat: Decimal;
        TotalSuplyValue_Lbl: Label 'Total supply amount';
        TotalSupplyValue_Lbl: Label 'Total supply amount';
        TotalValueINVAT_Lbl: Label 'Total VAT amount';
        Discoun_Lbl: Label 'Discount';
        CustomerFiscalNo: Text[30];
        TotalAmountInclVAT: Decimal;
        PaidValue: Decimal;
        PrepaimentLine: Boolean;
        CompanyContryName: Text[50];
        CustomerContryName: Text[50];
        LocalLegislationRuleText: Text[250];
        InvoiceOrdinalNumb_Lbl: Label 'Invoice Number:';
        DateIssuInv_Lbl: Label 'Date of invoice issuance:';
        DateSsupply_Lbl: Label 'Date of supply: ';

    local procedure CalculatePricesWithAndWithoutVat(var PriceWithoutVat: Decimal; var PriceWithVat: Decimal)
    var
        Currency: Record Currency;
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

    local procedure CalculateValueTaxAfterDiscount(var ValueTaxableAfterDiscount: Decimal)
    var
        InvDiscAmount: Decimal;
    begin
        if "Sales Invoice Header"."Prices Including VAT" then
            InvDiscAmount := "Sales Invoice Line"."Inv. Discount Amount" / (1 + "Sales Invoice Line"."VAT %" / 100)
        else
            InvDiscAmount := "Sales Invoice Line"."Inv. Discount Amount";
        ValueTaxableAfterDiscount := "Sales Invoice Line".Amount + InvDiscAmount;
    end;

    local procedure CalculateTotalLine(var TotalLine: Decimal)
    var
        InvDiscAmountInclVAT: Decimal;
    begin
        if "Sales Invoice Header"."Prices Including VAT" then
            InvDiscAmountInclVAT := "Sales Invoice Line"."Inv. Discount Amount"
        else
            InvDiscAmountInclVAT := "Sales Invoice Line"."Inv. Discount Amount" * (1 + "Sales Invoice Line"."VAT %" / 100);
        TotalLine := "Sales Invoice Line"."Amount Including VAT" + InvDiscAmountInclVAT;
    end;

    local procedure CaculateTotalDiscounts()
    var
    begin
        if "Sales Invoice Header"."Prices Including VAT" then begin
            TotalDiscountAmount += ("Sales Invoice Line"."Inv. Discount Amount" / (1 + "Sales Invoice Line"."VAT %" / 100));
            TotalDiscountAmountInclVat += "Sales Invoice Line"."Inv. Discount Amount";
            TotalDiscountVat += TotalDiscountAmountInclVat - TotalDiscountAmount;
        end else begin
            TotalDiscountAmount += ("Sales Invoice Line"."Inv. Discount Amount");
            TotalDiscountAmountInclVat += "Sales Invoice Line"."Inv. Discount Amount" * (1 + "Sales Invoice Line"."VAT %" / 100);
            TotalDiscountVat += TotalDiscountAmountInclVat - TotalDiscountAmount;
        end;
    end;
}
