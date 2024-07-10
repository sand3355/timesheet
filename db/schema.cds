namespace timesheet;

entity timesheet
{
    key ID : UUID;
    Email_Id : String(100);
    Name : String(100);
    Date : Date;
    Day : String(100);
    Account : String(100);
    Activity_Type : String(100);
    Activity : String(200);
    Hours_Worked : String(100);
    Work_Mode : String(100);
}
