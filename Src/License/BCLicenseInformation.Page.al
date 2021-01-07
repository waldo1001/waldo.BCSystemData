page 94581 "BC License Information"
{
    AdditionalSearchTerms = 'SystemTables';
    ApplicationArea = All;
    Caption = 'BC License Information';
    PageType = List;
    SourceTable = "License Information";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Text; Rec.Text)
                {
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

}
