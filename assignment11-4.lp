// Objective function 
// Each of the x is a set of days off starting with SundayMonday
// Each of the values is the cost per worker
min: 775x1 + 800x2 + 800x3 + 800x4 + 800x5 + 775x6 + 750x7;

// Constraints
// Each constraint is the combination of all shifts that could cover the days off

SundayMonday:      x3 + x4 + x5 + x6 >= 27;
MondayTuesday:     x4 + x5 + x6 + x7 >= 27;
TuesdayWednesday:  x1 + x5 + x6 + x7 >= 26;
WednesdayThursday: x1 + x2 + x6 + x7 >= 26;
ThursdayFriday:    x1 + x2 + x3 + x7 >= 25;
FridaySaturday:    x1 + x2 + x3 + x4 >= 21;
SaturdaySunday:    x2 + x3 + x4 + x5 >= 19;

int x1, x2, x3, x4, x5, x6, x7;

//The total cost is 33550 Dollars per week.

//The number of workers each day meets the minimum. Each shift 1 -> 7 needs the following number of workers at a minimum 4, 2, 9, 6, 2, 10, 10.

//This means that the two workers who are on shift 1 will work Tuesday -> Saturday and so on.

//Total workers:
//Sunday       2 9 6 2 10      Totals: Sunday    - 29
//Monday         9 6 2 10 10           Monday    - 37
//Tuesday    4     6 2 10 10           Tuesday   - 32
//Wednesday  4 2     2 10 10           Wednesday - 28
//Thursday   4 2 9     10 10           Thursday  - 35
//Friday     4 2 9 6      10           Friday    - 31
//Saturday   4 2 9 6 2                 Saturday  - 23