table 50139 "CRONUS Course"
{
    DataClassification = CustomerContent;
    Caption = 'Course';
    LookupPageId = "CRONUS Course List";
    DrillDownPageId = "CRONUS Course List";
    fields
    {
        field(10; Code; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(20; Name; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(30; Description; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(40; Type; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = "Instructor","Led","e-Learning","Remote Training";
        }
        field(50; Duration; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(60; Price; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(70; Active; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(80; Diificulty; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(90; "Passing Rate"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(100; "Instructor Code"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Resource Where(Type = Const(Person));
        }
        field(120; "Instructor Name"; Text[50])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
        key(Key1; "Instructor Code")
        {
        }
        key(Key2; Type) { }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}