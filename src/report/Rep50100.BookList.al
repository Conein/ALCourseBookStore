report 50100 "Book List"
{
    Caption = 'Book List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report\Report50100.booklist.rdlc';

    dataset
    {
        dataitem(DataItemName; Books)
        {
            column(No_Book; "No.") { IncludeCaption = true; }
            column(Title_Book; Title) { IncludeCaption = true; }
            column(Author_Book; Author) { IncludeCaption = true; }
            column(PageCount_Book; "Page Count") { IncludeCaption = true; }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; DoPageCount)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        DoPageCount: Boolean;
}