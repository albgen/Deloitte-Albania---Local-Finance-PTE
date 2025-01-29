page 51642 "Smw Vat Book Codes"
{
    PageType = List;
    SourceTable = "Smw Vat Book Code";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            systempart(ControlNotes; Notes)
            {
                Visible = false;
                ApplicationArea = All;
            }
            systempart(ControlLinks; Links)
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}
