class Leap {
  // Put your code here
  leapYear(int year){
    if(year % 100 == 0){
      return year % 400 == 0;
    }
    return year % 4 == 0;
    // one line ternary preferred
    // return year % 100 == 0 ? year % 400 == 0 : year % 4 == 0;
  }

}

