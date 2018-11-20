pageextension 50102 "Customer Page Ext. Books" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(General)
        {
            group(Books)
            {
                field("Favorite Book No.";
                "Favorite Book No.")
                {
                    ApplicationArea = All;

                }
            }

        }

        addlast(FactBoxes)
        {
            Part(BookFactBox; "Book Fact Box")
            {
                SubPageLink = "no." = field ("Favorite Book No.");
            }


        }


    }
}