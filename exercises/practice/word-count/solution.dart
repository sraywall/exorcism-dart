import 'package:collection/collection.dart';

class WordCount {
  countWords(String str){
    var dict = <String,int>{};
    for(var match in RegExp(r"(\w+('\w+)?)").allMatches(str.toLowerCase())){
      var s = match[0]??"";
      dict[s] = (dict[s]??0) + 1;
    }
    print('$dict');
  }
}
