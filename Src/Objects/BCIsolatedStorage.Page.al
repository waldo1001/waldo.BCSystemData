page 94586 "BC Isolated Storage"
{
    AdditionalSearchTerms = 'SystemTables';
    ApplicationArea = All;
    Caption = 'BC Isolated Storage';
    PageType = List;
    SourceTable = "Isolated Storage";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("App Id"; Rec."App Id")
                {
                    ApplicationArea = All;
                }
                field(Scope; Rec.Scope)
                {
                    ApplicationArea = All;
                }
                field("Key"; Rec."Key")
                {
                    ApplicationArea = All;
                }
                field("Company Name"; Rec."Company Name")
                {
                    ApplicationArea = All;
                }
                field("Encryption Status"; Rec."Encryption Status")
                {
                    ApplicationArea = All;
                }
                field("User Id"; Rec."User Id")
                {
                    ApplicationArea = All;
                }
                field(Value; Rec.Value)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
