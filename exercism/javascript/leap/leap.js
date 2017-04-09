//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

//Solved April 8, 2017

var Year = function(year) {
  this.year = year;
};

var checkYear = function(year) {
    if (year%100 ===0 && year%400 !==0) return false;
    return year%4===0;
};

Year.prototype.isLeap = function(year) {
  return checkYear(this.year);
};

module.exports = Year;
