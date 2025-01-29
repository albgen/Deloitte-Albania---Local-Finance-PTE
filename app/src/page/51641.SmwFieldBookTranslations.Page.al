page 51641 "Smw Field Book Translations"
{
    Caption = 'Field Book Translations';
    DataCaptionFields = "Book Code", "Code", "Language Code";
    DelayedInsert = true;
    PageType = List;
    SourceTable = "Smw Field Book Translation";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Language Code"; Rec."Language Code")
                {
                    LookupPageID = Languages;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the language that is used when translating specified text on documents to foreign business partner, such as an item description on an order confirmation.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the translated name of the item attribute.';
                }
            }
        }
    }

    actions
    {
    }
}
