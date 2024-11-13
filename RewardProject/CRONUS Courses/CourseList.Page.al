page 50146 "CRONUS Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CRONUS Course";
    Caption = 'Course List';
    CardPageId = "CRONUS Course Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            Repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;

                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}