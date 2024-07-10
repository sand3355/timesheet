using employee as service from '../../srv/service';
annotate service.timesheet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Email_Id',
                Value : Email_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date',
                Value : Date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Day',
                Value : Day,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Account',
                Value : Account,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Activity Type',
                Value : Activity_Type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Activity',
                Value : Activity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Hours Worked',
                Value : Hours_Worked,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Work_Mode',
                Value : Work_Mode,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Email_Id',
            Value : Email_Id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Date',
            Value : Date,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Day',
            Value : Day,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Account',
            Value : Account,
        },
        {
            $Type : 'UI.DataField',
            Value : Activity,
            Label : 'Activity',
        },
        {
            $Type : 'UI.DataField',
            Value : Activity_Type,
            Label : 'Activity Type',
        },
        {
            $Type : 'UI.DataField',
            Value : Hours_Worked,
            Label : 'Hours Worked',
        },
        {
            $Type : 'UI.DataField',
            Value : Work_Mode,
            Label : 'Work_Mode',
        },
    ],
);
annotate service.timesheet with {
    Email_Id @Common.FieldControl : #Mandatory
};
annotate service.timesheet with {
    Name @Common.FieldControl : #Mandatory
};
