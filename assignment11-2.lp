// Objective function 
// Each of the x is a set of days off starting with SundayMonday
// Each of the values is the cost per worker
min: 775x1 + 800x2 + 800x3 + 800x4 + 800x5 + 775x6 + 750x7;

// Constraints

SundayMonday:      x2 + x3 + x4 + x5 + x6 + x7 >= 27;
MondayTuesday:     x1 + x3 + x4 + x5 + x6 + x7 >= 27;
TuesdayWednesday:  x1 + x2 + x4 + x5 + x6 + x7 >= 26;
WednesdayThursday: x1 + x2 + x3 + x5 + x6 + x7 >= 26;
ThursdayFriday:    x1 + x2 + x3 + x4 + x6 + x7 >= 25;
FridaySaturday:    x1 + x2 + x3 + x4 + x5 + x7 >= 21;
SaturdaySunday:    x1 + x2 + x3 + x4 + x5 + x6 >= 19;

int x1, x2, x3, x4, x5, x6, x7;