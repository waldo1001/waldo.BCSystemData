page 94582 "BC Api Web Service"
{
    AdditionalSearchTerms = 'SystemTables';
    ApplicationArea = All;
    Caption = 'BC Api Web Service';
    PageType = List;
    SourceTable = "Api Web Service";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Object ID"; Rec."Object ID")
                {
                    ApplicationArea = All;
                }
                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = All;
                }
                field("Package ID"; Rec."Package ID")
                {
                    ApplicationArea = All;
                }
                field("Service Name"; Rec."Service Name")
                {
                    ApplicationArea = All;
                }
                field(Group; Rec.Group)
                {
                    ApplicationArea = All;
                }
                field(Published; Rec.Published)
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
            }
        }
    }

}
