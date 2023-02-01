page 94589 "Tenant Media"
{
    AdditionalSearchTerms = 'System';
    ApplicationArea = All;
    Caption = 'Tenant Media';
    PageType = List;
    SourceTable = "Tenant Media";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Editable = false;

                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                    ApplicationArea = All;
                }
                field(WhereUsed; WhereUsed)
                {
                    Caption = 'Where Used';
                    ToolTip = 'Specifies the table where this record is used.';
                    ApplicationArea = All;
                    Visible = IsWhereUsedVisible;

                    trigger OnAssistEdit()
                    var
                        WhereMediaUsedMeth: Codeunit "WhereMediaUsed Meth";
                    begin
                        Message(WhereMediaUsedMeth.GetWhereUsed(Rec));
                    end;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field("File Name"; Rec."File Name")
                {
                    ToolTip = 'Specifies the value of the File Name field.';
                    ApplicationArea = All;
                }
                field("Mime Type"; Rec."Mime Type")
                {
                    ToolTip = 'Specifies the value of the Mime Type field.';
                    ApplicationArea = All;
                }
                field("Creating User"; Rec."Creating User")
                {
                    ToolTip = 'Specifies the value of the Creating User field.';
                    ApplicationArea = All;
                }
                field(Content1; Rec.Content)
                {
                    ToolTip = 'Specifies the value of the Content field.';
                    ApplicationArea = All;
                }
                field("Company Name"; Rec."Company Name")
                {
                    ToolTip = 'Specifies the value of the Company Name field.';
                    ApplicationArea = All;
                }
                field(Height; Rec.Height)
                {
                    ToolTip = 'Specifies the value of the Height field.';
                    ApplicationArea = All;
                }
                field(Width; Rec.Width)
                {
                    ToolTip = 'Specifies the value of the Width field.';
                    ApplicationArea = All;
                }
                field("Expiration Date"; Rec."Expiration Date")
                {
                    ToolTip = 'Specifies the value of the Expiration Date field.';
                    ApplicationArea = All;
                }
                field("Prohibit Cache"; Rec."Prohibit Cache")
                {
                    ToolTip = 'Specifies the value of the Prohibit Cache field.';
                    ApplicationArea = All;
                }
                field("Security Token"; Rec."Security Token")
                {
                    ToolTip = 'Specifies the value of the Security Token field.';
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            part(picture; "TenantMedia Picture")
            {
                ApplicationArea = All;
                SubPageLink = ID = field(ID);
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ToggleWhereUsed)
            {
                Caption = 'Toggle Where Used';
                Image = ToggleBreakpoint;
                ApplicationArea = All;
                ToolTip = 'Executes the Toggle Where Used action.';

                trigger OnAction()
                begin
                    IsWhereUsedVisible := not IsWhereUsedVisible;
                end;
            }
            action(GetOrphans)
            {
                Caption = 'Get Orphans';
                Image = VoidExpiredCheck;
                ApplicationArea = All;
                ToolTip = 'Searches for Orphans, displays them, for you to handle them';
                trigger OnAction()
                var
                    GetTenantMediaOrphansMeth: Codeunit "GetMediaOrphans Meth";
                begin
                    GetTenantMediaOrphansMeth.GetTenantMediaOrphans();
                    page.Run(page::"Tenant Media Orphans");
                end;
            }
            action(ShowOrphans)
            {
                Caption = 'Show Orphans';
                Image = VoidExpiredCheck;
                ApplicationArea = All;
                ToolTip = 'Shows the Orphaned records which were previously loaded.';
                trigger OnAction()
                begin
                    page.Run(page::"Tenant Media Orphans");
                end;
            }
        }
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process';
                actionref(ToggleWhereUsed_Promoted; ToggleWhereUsed)
                {
                }
                group(Orphans)
                {
                    ShowAs = SplitButton;
                    actionref(ShowOrphans_Promoted; ShowOrphans) { }
                    actionref(GetOrphans_Promoted; GetOrphans) { }
                }
            }
        }
    }

    var
        [InDataSet]
        WhereUsed: Text;
        [IndataSet]
        IsWhereUsedVisible: Boolean;

    trigger OnInit()
    begin
        IsWhereUsedVisible := false;
    end;

    trigger OnAfterGetRecord()
    var
        WhereMediaUsedFirstMeth: Codeunit WhereMediaUsedFirstMeth;
    begin
        if not IsWhereUsedVisible then exit;

        WhereUsed := WhereMediaUsedFirstMeth.GetWhereUsedFirst(Rec);
    end;

}
