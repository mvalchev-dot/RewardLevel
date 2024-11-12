pageextension 50123 CustomersList extends "Customer List"
{
    trigger OnOpenPage();
    begin
        report.Run(Report::LABCustomerList);
    end;
}