using { timesheet as my } from '../db/schema.cds';

@path : '/service/Manager'
service Manager
{
    annotate timesheet with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Manager' ] },
    ];
    @odata.draft.enabled
    entity timesheet as
        projection on my.timesheet;
}

annotate Manager with @requires :
[
    'authenticated-user'
];
