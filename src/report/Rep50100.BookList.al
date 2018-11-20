report 50100 "Book List"
{
    Caption = 'Book List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report\Report50100.booklist.rdlc';


    dataset
    {

        dataitem(FirstLoop; Integer)
        {

            DataItemTableView = sorting (number) where (number = const (1));
            column(CompanyName; companyproperty.DisplayName()) { }
        }

        dataitem(Books; Books)
        {

            column(No_Book; "No.") { IncludeCaption = true; }
            column(Title_Book; Title) { IncludeCaption = true; }
            column(Author_Book; Author) { IncludeCaption = true; }
            column(PageCount_Book; "Page Count") { IncludeCaption = true; }
            column(No__of_Customer_Book; "No. of Customer") { IncludeCaption = true; }
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
                    field(ShowPageCount; ShowPageCount)

                    {
                        ApplicationArea = All;
                        Caption = 'Show Page Count';
                    }
                }

            }
        }

    }


    labels
    {
        TitelCaption = 'Bock List';
        PageCaption = 'Page {0} of {1}';

    }
    var
        ShowPageCount: Boolean;









    var
        DoPageCount: Boolean;
}