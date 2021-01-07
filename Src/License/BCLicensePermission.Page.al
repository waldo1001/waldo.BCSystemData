page 94587 "BC License Permission"
{
    AdditionalSearchTerms = 'SystemTables';
    ApplicationArea = All;
    Caption = 'BC License Permission';
    PageType = List;
    SourceTable = "License Permission";
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
                field("Object Number"; Rec."Object Number")
                {
                    ApplicationArea = All;
                }
                field("Read Permission"; Rec."Read Permission")
                {
                    ApplicationArea = All;
                }
                field("Insert Permission"; Rec."Insert Permission")
                {
                    ApplicationArea = All;
                }
                field("Modify Permission"; Rec."Modify Permission")
                {
                    ApplicationArea = All;
                }
                field("Delete Permission"; Rec."Delete Permission")
                {
                    ApplicationArea = All;
                }
                field("Execute Permission"; Rec."Execute Permission")
                {
                    ApplicationArea = All;
                }
                field("Limited Usage Permission"; Rec."Limited Usage Permission")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
