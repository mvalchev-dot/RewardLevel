tableextension 50110 "CRONUS Social Media Table Ext" extends Customer
{
    fields
    {
        field(50110; Facebook; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Facebook';
        }
        field(50111; "X, Formerly Twitter"; Text[30])
        {
            DataClassification = ToBeClassified;
            caption = 'X';
        }
        field(50112; Instagram; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Instagram';
        }
        field(50113; LinkedIn; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'LinkedIn';
        }
    }


    var
}