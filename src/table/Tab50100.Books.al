table 50100 "Books"
{
    Caption = 'Books';
    LookupPageId = "Book List";
    DrillDownPageId = "Book List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "Title"; Text[50])
        {
            Caption = 'Title';
        }
        field(3; "Author"; Text[50])
        {
            Caption = 'Author';
        }
        field(4; "Hardcover"; Boolean)
        {
            Caption = 'Hardcover';
        }
        field(5; "Page Count"; Integer)
        {
            Caption = 'Page Count';
        }
        field(10; "No. of Customer"; Integer)
        {
            Caption = 'No. of Customer';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = count (Customer where ("Favorite Book No." = field ("no.")));
        }
        field(20; Picture; Media)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Title)
        { }
    }


    procedure CopyMyRec()
    var
        NewRec: Record Books;
    begin
        NewRec.TransferFields(Rec);
        NewRec."No." := IncStr("No.");
        Insert(true);
        Commit();
        Page.RunModal(0, NewRec);
    end;

    procedure StartList()

    begin
        Report.RunModal(Report::"Book List", false, false, Rec);
    end;


    procedure ExportBooks(var MarkedBooks: Record Books)

    begin
        Xmlport.Run(Xmlport::BookPort, false, false, MarkedBooks);
    end;


}