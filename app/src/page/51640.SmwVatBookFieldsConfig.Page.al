page 51640 "Smw Vat Book Fields Config."
{
    Caption = 'Vat Book Fields Configuration';
    DelayedInsert = true;
    PageType = List;
    SourceTable = "Smw Vat Book Field Config.";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Book Code"; Rec."Book Code")
                {
                    ToolTip = 'Specifies the value of the Book Code field.';
                    ApplicationArea = All;
                }
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field("Box No."; Rec."Box No.")
                {
                    ToolTip = 'Specifies the value of the Box No. field.';
                    ApplicationArea = All;
                }
                field("Presentation Order"; Rec."Presentation Order")
                {
                    ToolTip = 'Specifies the value of the Presentation Order field.';
                    ApplicationArea = All;
                }
                field("Field Name"; Rec."Field Name")
                {
                    ToolTip = 'Specifies the value of the Field Name field.';
                    ApplicationArea = All;
                }
                field("Field Formula"; Rec."Field Formula")
                {
                    ToolTip = 'Specifies the value of the Field Formula field.';
                    ApplicationArea = All;
                }
                field("Totaling Type"; Rec."Totaling Type")
                {
                    ToolTip = 'Specifies the value of the Totaling Type field.';
                    ApplicationArea = All;
                }
                field("Totaling Columns"; Rec."Totaling Columns")
                {
                    ToolTip = 'Specifies the value of the Totaling Columns field.';
                    ApplicationArea = All;
                }
                field("Calculate/SUM"; Rec."Calculate/SUM")
                {
                    ToolTip = 'Specifies the value of the Calculate/SUM field.';
                    ApplicationArea = All;
                }
                field(Show; Rec.Show)
                {
                    ToolTip = 'Specifies the value of the Show field.';
                    ApplicationArea = All;
                }
                field("Reverse Sign"; Rec."Reverse Sign")
                {
                    ToolTip = 'Specifies the value of the Reverse Sign field.';
                    ApplicationArea = All;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.';
                    ApplicationArea = All;
                }
                field("Gen. Bus. P. G. Filter"; Rec."Gen. Bus. P. G. Filter")
                {
                    ToolTip = 'Specifies the value of the Gen. Bus. P. G. Filter field.';
                    ApplicationArea = All;
                }
                field("Gen. Prod. P. G. Filter"; Rec."Gen. Prod. P. G. Filter")
                {
                    ToolTip = 'Specifies the value of the Gen. Prod. P. G. Filter field.';
                    ApplicationArea = All;
                }
                field("VAT Bus. P. G. Filter"; Rec."VAT Bus. P. G. Filter")
                {
                    ToolTip = 'Specifies the value of the VAT Bus. P. G. Filter field.';
                    ApplicationArea = All;
                }
                field("VAT Prod. P. G. Filter"; Rec."VAT Prod. P. G. Filter")
                {
                    ToolTip = 'Specifies the value of the VAT Prod. P. G. Filter field.';
                    ApplicationArea = All;
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ToolTip = 'Specifies the value of the Reason Code field.';
                    ApplicationArea = All;
                }
                field("VAT Entry Type"; Rec."VAT Entry Type")
                {
                    ToolTip = 'Specifies the value of the VAT Entry Type field.';
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            systempart(ControlLinks; Links)
            {
                Visible = false;
                ApplicationArea = All;
            }
            systempart(ControlNotes; Notes)
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action(FieldBookTranslations)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Translations';
                    Image = Translations;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    RunObject = Page "Smw Field Book Translations";
                    RunPageLink = "Book Code" = FIELD("Book Code"),
                                  Code = FIELD(Code);
                }
            }
        }
    }
}
