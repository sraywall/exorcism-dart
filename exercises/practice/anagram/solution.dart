class Anagram {
  findAnagrams(String s,List<String> lst){
    return [for(var str in lst) if(str.toLowerCase() != s.toLowerCase() && sortLetters(s) == sortLetters(str)) str];
  }
  
  String sortLetters(String s){
    return s.toLowerCase().split("").sorted().join();
  }
}
