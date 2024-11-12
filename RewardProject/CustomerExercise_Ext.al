tableextension 50101 CustomerExercise extends Customer
{

    fields
    {
        field(50102; "V02Max"; Decimal) { }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        addlast(DropDown; V02Max) { }
        addlast(DropDown; "Address 2") { }
    }

    var
        myInt: Integer;
}