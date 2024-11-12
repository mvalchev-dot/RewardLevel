// report 50143 MyReport
// {
//     UsageCategory = ReportsAndAnalysis;
//     ApplicationArea = All;
//     DefaultRenderingLayout = LayoutName;
//     [EventSubscriber(ObjectType::, Codeunit::, 'OnAfterDocumentPrintReady', 'ElementName', SkipOnMissingLicense, SkipOnMissingPermission)]
//     local procedure MyProcedure()
//     begin

//     end;
//     dataset
//     {
//         dataitem(DataItemName; SourceTableName)
//         {
//             column(ColumnName; SourceFieldName)
//             {

//             }
//         }
//     }

//     requestpage
//     {
//         AboutTitle = 'Teaching tip title';
//         AboutText = 'Teaching tip content';
//         layout
//         {
//             area(Content)
//             {
//                 group(GroupName)
//                 {
//                     field(Name; SourceExpression)
//                     {

//                     }
//                 }
//             }
//         }

//         actions
//         {
//             area(processing)
//             {
//                 action(LayoutName)
//                 {

//                 }
//             }
//         }
//     }

//     rendering
//     {
//         layout(LayoutName)
//         {
//             Type = Excel;
//             LayoutFile = 'mySpreadsheet.xlsx';
//         }
//     }

//     var
//         myInt: Integer;
// }