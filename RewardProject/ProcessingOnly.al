report 50131 MyReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    ProcessingOnly = true;
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Customerr; Name)
            {

            }
            trigger OnPreDataItem();
            begin
                clear(Customer);
                clear(Counter);
                if not ReplaceExisting then
                    Customer.SetRange("Name 2", '');
            end;

            trigger OnAfterGetRecord();
            begin
                if Customer2.get(Customer."No.") then begin
                    Customer2."Name 2" := Name2ToApply;
                    Customer2.Modify;
                    Counter += 1;
                end;
            end;

            trigger OnPostDataItem();
            begin
                Message('Ready!, %1 Customers were updated.', counter);
            end;


        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = Excel;
            LayoutFile = 'mySpreadsheet.xlsx';
        }
    }

    var
        myInt: Integer;
        Name2ToApply: Text;
        Customer2: Record Customer;
        ReplaceExisting: Boolean;
        Counter: Integer;
}