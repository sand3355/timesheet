using { timesheet as my } from '../db/schema.cds';

@path : '/service/employee'
service employee
{
    annotate timesheet with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Manager' ] },
        { grant : [ 'CREATE', 'UPDATE', 'DELETE' ], to : [ 'employee' ] },
        { grant : [ 'READ' ], to : [ 'employee' ], where : 'Email_Id = Email_Id' }
    ];

    @odata.draft.enabled
    entity timesheet as
        projection on my.timesheet;
}

annotate employee with @requires :
[
    'authenticated-user',
    'Manager'
];
