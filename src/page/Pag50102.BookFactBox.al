page 50102 "Book Fact Box"
{
    PageType = CardPart;
    SourceTable = Books;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field(Title; Title)
                {
                    ApplicationArea = All;

                }
                systempart(Notes; Notes) { }
            }
        }
    }
}