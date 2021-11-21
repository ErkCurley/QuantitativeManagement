// Objective function 
// Each of the x is a set of days off starting with SundayMonday
// Each of the values is the cost per worker
min: 775x1 + 800x2 + 800x3 + 800x4 + 800x5 + 775x6 + 750x7;

// Constraints
SundayMonday:      x1 + x2 >= 45;
MondayTuesday:     x2 + x3 >= 49;
TuesdayWednesday:  x3 + x4 >= 48;
WednesdayThursday: x4 + x5 >= 51;
ThursdayFriday:    x5 + x6 >= 46;
FridaySaturday:    x6 + x7 >= 40;
SaturdaySunday:    x7 + x1 >= 37;

int x1, x2, x3, x4, x5, x6, x7;