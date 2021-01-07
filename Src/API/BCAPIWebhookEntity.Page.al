page 94585 "BC API Webhook Entity"
{
    AdditionalSearchTerms = 'SystemTables';
    ApplicationArea = All;
    Caption = 'BC API Webhook Entity';
    PageType = List;
    SourceTable = "API Webhook Entity";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = All;
                }
                field("Object ID"; Rec."Object ID")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Publisher; Rec.Publisher)
                {
                    ApplicationArea = All;
                }
                field(Version; Rec.Version)
                {
                    ApplicationArea = All;
                }
                field("Key Fields"; Rec."Key Fields")
                {
                    ApplicationArea = All;
                }
                field("OData Key Specified"; Rec."OData Key Specified")
                {
                    ApplicationArea = All;
                }
                field("Package ID"; Rec."Package ID")
                {
                    ApplicationArea = All;
                }
                field("Table Filters"; Rec."Table Filters")
                {
                    ApplicationArea = All;
                }
                field("Table No."; Rec."Table No.")
                {
                    ApplicationArea = All;
                }
                field("Table Temporary"; Rec."Table Temporary")
                {
                    ApplicationArea = All;
                }
                field(Group; Rec.Group)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
