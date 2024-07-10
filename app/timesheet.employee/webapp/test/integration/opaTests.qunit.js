sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'timesheet/employee/test/integration/FirstJourney',
		'timesheet/employee/test/integration/pages/timesheetList',
		'timesheet/employee/test/integration/pages/timesheetObjectPage'
    ],
    function(JourneyRunner, opaJourney, timesheetList, timesheetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('timesheet/employee') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThetimesheetList: timesheetList,
					onThetimesheetObjectPage: timesheetObjectPage
                }
            },
            opaJourney.run
        );
    }
);