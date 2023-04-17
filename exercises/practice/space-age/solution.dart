class Bob {
  response(String str){
    var letters = [for(var match in RegExp(r"[A-Za-z]").allMatches(str)) if(match[0] != null) match[0]??""];
    bool allCaps = letters.isEmpty ? false : letters.every((s) =>s.toUpperCase() == s);
    bool question = RegExp(r"\?\s*$").hasMatch(str);
    bool silence = !RegExp(r"\S").hasMatch(str);
    if(silence){
      return 'Fine. Be that way!';
    }
    if(question){
      if(allCaps){
        return 'Calm down, I know what I\'m doing!';
      } else {
        return 'Sure.';
      }
    }
    return allCaps ? 'Whoa, chill out!' : 'Whatever.';
  }
}
