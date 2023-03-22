import 'dart:math';
import 'package:collection/collection.dart';//needed for tests

class HighScores {
  // Put your code here
  var scores = <int>[];
  HighScores(this.scores);
  latest() => scores.last;
  personalBest() => scores.fold(-1,(curr,acc)=>max(curr,acc));
  personalTopThree() => scores.sorted((x,y)=>y-x).sublist(0, scores.length < 3 ? scores.length : 3);
  
}
