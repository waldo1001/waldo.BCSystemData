codeunit 94584 "DeleteOrphans Meth"
{
    internal procedure DeleteSelected()
    var
        IsHandled: Boolean;
    begin
        OnBeforeDeleteSelected(IsHandled);
        DoDeleteSelected(IsHandled);
        OnAfterDeleteSelected();
    end;

    local procedure DoDeleteSelected(IsHandled: Boolean);
    var
        TenantMediaOrphanSYSD: Record "Tenant Media Orphan";
        TenantMediaOrphanSYSD2: Record "Tenant Media Orphan";
        TenantMedia: Record "Tenant Media";
        TenantMediaThumbnails: Record "Tenant Media Thumbnails";
    begin
        if IsHandled then
            exit;
        TenantMediaOrphanSYSD.SetRange(Select, true);
        if not TenantMediaOrphanSYSD.FindSet() then exit;
        repeat
            TenantMediaOrphanSYSD2 := TenantMediaOrphanSYSD;
            TenantMedia.get(TenantMediaOrphanSYSD.MediaID);
            TenantMediaThumbnails.Setrange("Media ID", TenantMedia.ID);
            TenantMedia.Delete(true);
            TenantMediaThumbnails.DeleteAll(true);
            TenantMediaOrphanSYSD2.Delete(true);
        until TenantMediaOrphanSYSD.Next() < 1;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeDeleteSelected(var IsHandled: Boolean);
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterDeleteSelected();
    begin
    end;
}