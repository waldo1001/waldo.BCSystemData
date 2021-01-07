page 94580 "BC Application Dependency"
{

    Caption = 'BC Application Dependency';
    PageType = List;
    SourceTable = "Application Dependency";
    UsageCategory = Lists;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Dependency App ID"; Rec."Dependency App ID")
                {
                    ApplicationArea = All;
                }
                field("Dependency Name"; Rec."Dependency Name")
                {
                    ApplicationArea = All;
                }
                field("Dependency Publisher"; Rec."Dependency Publisher")
                {
                    ApplicationArea = All;
                }
                field("Dependency Version Build"; Rec."Dependency Version Build")
                {
                    ApplicationArea = All;
                }
                field("Dependency Version Major"; Rec."Dependency Version Major")
                {
                    ApplicationArea = All;
                }
                field("Dependency Version Minor"; Rec."Dependency Version Minor")
                {
                    ApplicationArea = All;
                }
                field("Dependency Version Revision"; Rec."Dependency Version Revision")
                {
                    ApplicationArea = All;
                }
                field("Package ID"; Rec."Package ID")
                {
                    ApplicationArea = All;
                }
                field("Runtime Package ID"; Rec."Runtime Package ID")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

}
