profile "MyProfile"
{
    Description = 'GOB Role';
    RoleCenter = "Business Manager Role Center";
    Customizations = GOB_Customization;
}


pagecustomization GOB_Customization customizes "Customer List"
{
    layout
    {
        // Add changes to page layout here
        modify("Location Code")
        {
            Width = 9;
        }
    }

    actions
    {
        movebefore(NewSalesOrder; NewServiceCrMemo)


    }

    //Variables, procedures and triggers are not allowed on Page Customizations
}