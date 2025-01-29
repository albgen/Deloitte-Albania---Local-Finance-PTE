// Smartwork Sh.P.K
// -------------------------------------------------------------------------------------------------------------------------------------------------------------------
// T           = Line Type: ? = Modification line on Development Request
// / = Comment on intervention
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// T|ID_RIC |MOD REL/Version |DATE    |SEARCH  |TEC |DESCRIPTION
// -+-------+----------------+--------+--------+----+------------------------------------------------------------------------------------------------------------------
// ?|AL01   |AL01            |10.11.20|#AL01   |XHT |New action "Set Apply To Document Number"
pageextension 51655 "Smw Sales Return Order Ext" extends "Sales Return Order"
{
    actions
    {
        addafter("Send IC Return Order Cnfmn.")
        {
            action(SmwSetApplyToDocumentNumber)
            {
                Image = Cancel;
                ApplicationArea = All;
                Caption = 'Set Apply To Document Number';
                Description = '#AL01';
                Promoted = true;
                PromotedCategory = Category7;
                Ellipsis = true;
                trigger OnAction()
                begin
                    FinanceSubscriptionMgt.SetAppliesDocToSalesHeader(Rec);
                end;
            }
        }
    }

    var
        FinanceSubscriptionMgt: Codeunit "Smw Finance Subscription Mgt";
}
