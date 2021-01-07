page 94583 "BC Extension Execution Info"
{
    AdditionalSearchTerms = 'SystemTables';
    ApplicationArea = All;
    Caption = 'BC Extension Execution Info';
    PageType = List;
    SourceTable = "Extension Execution Info";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Execution Time"; Rec."Execution Time")
                {
                    ApplicationArea = All;
                }
                field("Form ID"; Rec."Form ID")
                {
                    ApplicationArea = All;
                }
                field("Runtime Package ID"; Rec."Runtime Package ID")
                {
                    ApplicationArea = All;
                }
                field("Subscriber Execution Count"; Rec."Subscriber Execution Count")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
