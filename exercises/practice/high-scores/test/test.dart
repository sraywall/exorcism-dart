
void main() {
  List<String> fail_array = [];

  
  if(!ListEquality().equals(HighScores(<int>[30,50,20,70]).scores,<int>[30,50,20,70])){
    fail_array.add('List of scores');
  }
  
  if(HighScores(<int>[100,0,90,30]).latest() != 30){
    fail_array.add('Latest score');
  }
  
  if(HighScores(<int>[40,100,70]).personalBest() != 100){
    fail_array.add('Personal best');
  }
  
  if(!ListEquality().equals(HighScores(<int>[10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]).personalTopThree(),<int>[100,90,70])){
    fail_array.add('Personal top three from a list of scores');
  }
  
  if(!ListEquality().equals(HighScores(<int>[20, 10, 30]).personalTopThree(),<int>[30, 20, 10])){
    fail_array.add('Personal top highest to lowest');
  }
  
  if(!ListEquality().equals(HighScores(<int>[40, 20, 40, 30]).personalTopThree(),<int>[40, 40, 30])){
    fail_array.add('Personal top when there is a tie');
  }
  
  if(!ListEquality().equals(HighScores(<int>[30, 70]).personalTopThree(),<int>[70, 30])){
    fail_array.add('Personal top when there are less than three');
  }
  
  if(!ListEquality().equals(HighScores(<int>[40]).personalTopThree(),<int>[40])){
    fail_array.add('Personal top when there is only one');
  }
  var scores = HighScores(<int>[70, 50, 20, 30]);
  scores.personalTopThree();
  if(scores.latest == 30){
    fail_array.add('Latest score after personal top scores');
  }
  
  scores = HighScores(<int>[30, 50, 20, 70]);
  scores.personalTopThree();
  if(!ListEquality().equals(scores.scores,<int>[30, 50, 20, 70])){
    fail_array.add('Scores after personal top scores');
  }
  
  scores = HighScores(<int>[20, 70, 15, 25, 30]);
  scores.personalBest();
  if(scores.latest() != 30){
    fail_array.add('Latest score after personal best');
  }
  
  scores = HighScores(<int>[20, 70, 15, 25, 30]);
  scores.personalBest();
  if(!ListEquality().equals(scores.scores,<int>[20, 70, 15, 25, 30])){
    fail_array.add('Scores after personal top scores');
  }
  
  if(fail_array.isNotEmpty){
    _result(false,fail_array);
  } else {
    _result(true, ["all sections pass!"]);
  }
}
