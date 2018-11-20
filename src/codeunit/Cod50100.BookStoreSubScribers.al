codeunit 50100 "BookStoreSubScribers"
{
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure FavBookHintOnAfterInsertEventCustomerTable(var Rec: Record Customer)
    begin
        if not GuiAllowed() then
            exit;
        if rec."Favorite Book No." = '' then
            Message('Mann, füll Dein Lieblingsbuch, Du Knilch!!!!');


    end;

    procedure DoSomething()
    var
        MyText: Text;
        MyTextBuilder: TextBuilder;
    begin
        MyTextBuilder.AppendLine('Liebes Tagebuch,');
        MyTextBuilder.AppendLine('Katharina war heute wieder nicht nett zu mir');
        MyTextBuilder.Replace('Katharina', 'Dorit');
        MyText := MyTextBuilder.ToText;
        Message(MyText);

    end;
}