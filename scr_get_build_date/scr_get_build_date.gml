//Gets the date of compilation, humanizes it, and returns it as a string.
//TODO: Add meta information
function scr_get_build_date(){

//find the date and attach suffix
var _buildday = date_get_day(GM_build_date);
var _builddaystring = "";
switch _buildday{
case 1: case 21: case 31: _builddaystring = string(_buildday) + "st"; break;
case 2: case 22: _builddaystring = string(_buildday) + "nd";break;
case 3: case 23: _builddaystring = string(_buildday) + "rd";break;
default: _builddaystring = string(_buildday) + "th"; break;
}


//find the month and convert to name of month
var _buildmonth = date_get_month(GM_build_date);
var _buildmonthstring ="";
switch _buildmonth{
case 1: _buildmonthstring="January" break;
case 2: _buildmonthstring="February" break;
case 3: _buildmonthstring="March" break;
case 4: _buildmonthstring="April" break;
case 5: _buildmonthstring="May" break;
case 6: _buildmonthstring="June" break;
case 7: _buildmonthstring="July" break;
case 8: _buildmonthstring="August" break;
case 9: _buildmonthstring="September" break;
case 10: _buildmonthstring="October" break;
case 11: _buildmonthstring="November" break;
case 12: _buildmonthstring="December" break;
default: _buildmonthstring="Invalid Month"; 
}

//put it all together with the year.
var _builddate=string(_builddaystring+" "+_buildmonthstring+" "+string(date_get_year(GM_build_date)))
return _builddate;
}