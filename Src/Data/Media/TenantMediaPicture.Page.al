page 94591 "TenantMedia Picture"
{
    Caption = 'Media Picture';
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    PageType = CardPart;
    SourceTable = "Tenant Media";
    layout
    {
        area(content)
        {
            field(RecContent; Rec.Content)
            {
                ApplicationArea = Invoicing, Basic, Suite;
                ShowCaption = false;
                ToolTip = 'Specifies the picture Of the media.';
            }
        }
    }
}