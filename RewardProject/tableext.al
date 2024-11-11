tableextension 50118 Customer extends Customer
{
    fields
    {
        field(10001; RewardPoints; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Reward Points';
            MinValue = 0;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}