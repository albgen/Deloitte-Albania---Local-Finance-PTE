// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|KS01   |KS01            |01.02.21|#KS01   |XHT |Allow to update  ""Vendor Cr. Memo No.""
page 51644 "Smw Posted Purch. Cr.M. - Upd."
{
    Caption = 'Posted Purchase Credit Memo - Update';
    DeleteAllowed = false;
    Editable = true;
    InsertAllowed = false;
    ModifyAllowed = true;
    PageType = Card;
    ShowFilter = false;
    SourceTable = "Purch. Cr. Memo Hdr.";
    SourceTableTemporary = true;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    ToolTip = 'Specifies the posted invoice number.';
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Vendor';
                    Editable = false;
                    ToolTip = 'Specifies the name of the vendor who shipped the items.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    ToolTip = 'Specifies the date the purchase header was posted.';
                }
                field("Vendor Cr. Memo No."; Rec."Vendor Cr. Memo No.")
                {
                    ToolTip = 'Specifies the vendor''s number for this credit memo.';
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
        xPurchCrMemoHeader := Rec;
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if CloseAction = ACTION::LookupOK then
            if RecordChanged() then
                CODEUNIT.Run(CODEUNIT::"Smw Purch. Cr.Memo Hdr. - Edit", Rec);
    end;

    var
        xPurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";

    local procedure RecordChanged() IsChanged: Boolean
    begin
        IsChanged :=
            (Rec."Vendor Cr. Memo No." <> xPurchCrMemoHeader."Vendor Cr. Memo No.");

        OnAfterRecordChanged(Rec, xRec, IsChanged, xPurchCrMemoHeader);
    end;

    procedure SetRec(PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.")
    begin
        Rec := PurchCrMemoHeader;
        Rec.Insert();
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterRecordChanged(var PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr."; xPurchCrMemoHeader: Record "Purch. Cr. Memo Hdr."; var IsChanged: Boolean; xPurchCrMemoHeaderGlobal: Record "Purch. Cr. Memo Hdr.")
    begin
    end;
}
