report 50106 CustomerListReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    AdditionalSearchTerms = 'Customer List Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'CustomerListReport.rdl';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; Customer."No.")
            {
                IncludeCaption = true;
            }

            column(CustomerName; Name)
            {
                IncludeCaption = true;
            }

            column(City; City)
            {
                IncludeCaption = true;
            }

            column(BalanceLCY; "Balance (LCY)")
            {
                IncludeCaption = true;
            }
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



    var
        myInt: Integer;
}