// Objective function 
// Each of the x is a set of days off starting with SundayMonday
// Each of the values is the cost per worker
min: 775x1 + 800x2 + 800x3 + 800x4 + 800x5 + 775x6 + 750x7;

// Constraints
// Each constraint is the combination of all shifts that could cover the days off

SundayMonday:      x2 + x3 + x4 + x5 + x6 + x7 >= 27;
MondayTuesday:     x1 + x3 + x4 + x5 + x6 + x7 >= 27;
TuesdayWednesday:  x1 + x2 + x4 + x5 + x6 + x7 >= 26;
WednesdayThursday: x1 + x2 + x3 + x5 + x6 + x7 >= 26;
ThursdayFriday:    x1 + x2 + x3 + x4 + x6 + x7 >= 25;
FridaySaturday:    x1 + x2 + x3 + x4 + x5 + x7 >= 21;
SaturdaySunday:    x1 + x2 + x3 + x4 + x5 + x6 >= 19;

int x1, x2, x3, x4, x5, x6, x7;


//The total cost is 22450 Dollars per week.

//The number of workers each day meets the minimum. Each shift 1 -> 7 needs the following number of workers at a minimum 2, 0, 2, 3, 4, 8, 10.

//This means that the two workers who are on shift 1 will work Tuesday -> Saturday and so on.

//Total workers:
//Sunday       0 2 3 4 8      Totals: Sunday    - 17
//Monday         2 3 4 8 10           Monday    - 27
//Tuesday    2     3 4 8 10           Tuesday   - 27
//Wednesday  2 0     4 8 10           Wednesday - 24
//Thursday   2 0 2     8 10           Thursday  - 22
//Friday     2 0 2 3     10           Friday    - 11
//Saturday   2 0 2 3 4                Saturday  - 11


