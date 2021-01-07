page 94584 "BC Allobj"
{
    AdditionalSearchTerms = 'SystemTables';
    ApplicationArea = All;
    Caption = 'BC Allobj';
    PageType = List;
    SourceTable = Allobj;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("App Package ID"; Rec."App Package ID")
                {
                    ApplicationArea = All;
                }
                field("App Runtime Package ID"; Rec."App Runtime Package ID")
                {
                    ApplicationArea = All;
                }
                field("Object ID"; Rec."Object ID")
                {
                    ApplicationArea = All;
                }
                field("Object Name"; Rec."Object Name")
                {
                    ApplicationArea = All;
                }
                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
