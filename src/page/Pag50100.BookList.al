page 50100 "Book List"
{
    PageType = List;
    SourceTable = Books;
    Caption = 'Books';
    CardPageId = 50101;
    Editable = false;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter Title here';
                }
            }
        }
        area(FactBoxes)
        {
            part(BookFactBox; "Book Fact Box")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field ("No.");

            }
            systempart(Notes; Notes)
            {
                ApplicationArea = All;
            }
            systempart(Links; Links)
            {
                ApplicationArea = All;
            }

        }

    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
