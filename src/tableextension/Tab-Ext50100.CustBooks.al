tableextension 50100 "CustBooks" extends Customer
{
    fields
    {
        field(50100; "Favorite Book No."; Code[20])
        {
            Caption = 'Favorite Book No.';
            TableRelation = Books;

        }
    }

    var
        myInt: Integer;
}