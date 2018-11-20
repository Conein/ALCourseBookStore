page 50101 "Book Card"
{
    PageType = Card;
    SourceTable = Books;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a Title. Please avoid special characters.';

                }
            }
            group(Details)
            {

                field("No. of Customer"; "No. of Customer")
                {
                    ApplicationArea = All;
                }
                field(Author; Author)
                {
                    ApplicationArea = All;
                }
                field(Hardcover; Hardcover)
                {
                    ApplicationArea = All;
                }
                field("Page Count"; "Page Count")
                {
                    ApplicationArea = All;
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
            action(CopyMe)
            {
                ApplicationArea = All;
                Image = CopyBOMVersion;
                trigger OnAction()
                begin
                    CopyMyRec();
                end;
            }
        }
    }

    var
        myInt: Integer;
}