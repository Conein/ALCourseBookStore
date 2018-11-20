xmlport 50110 "BookPort"
{

    Caption = 'BookPort';
    Format = Xml;


    schema
    {
        textelement(Books)
        {
            tableelement(BooksNode; Books)
            {
                fieldattribute(NodeName3; BooksNode."No.")
                {

                }
            }
        }
    }


    var
        myInt: Integer;
}