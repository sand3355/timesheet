sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'timesheet/Manager/test/integration/FirstJourney',
		'timesheet/Manager/test/integration/pages/timesheetList',
		'timesheet/Manager/test/integration/pages/timesheetObjectPage'
    ],
    function(JourneyRunner, opaJourney, timesheetList, timesheetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('timesheet/Manager') + '/index.html'
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