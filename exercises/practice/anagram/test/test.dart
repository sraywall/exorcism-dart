final anagram = Anagram();

void main() {
      
      List<String> pass_array = [];
      List<String> fail_array = [];
      
      if (!ListEquality().equals(anagram.findAnagrams('diaper', <String>['hello', 'world', 'zombies', 'pants']),<String>[])){
        fail_array.add('no matches');
      }
  
      if (!ListEquality().equals(anagram.findAnagrams('good', <String>['dog', 'goody']),<String>[])){
        fail_array.add('does not detect anagram subsets');
      }
  
      if (!ListEquality().equals(anagram.findAnagrams('listen', <String>['enlists', 'google', 'inlets', 'banana']),<String>['inlets'])){
        fail_array.add('detects anagram');
      }
   
      if (!ListEquality().equals(anagram.findAnagrams('allergy', <String>['gallery', 'ballerina', 'regally', 'clergy', 'largely', 'leading']),<String>['gallery', 'regally', 'largely'])){
        fail_array.add('detects three anagrams');
      }
   
      if (!ListEquality().equals(anagram.findAnagrams('mass', <String>['last']),<String>[])){
        fail_array.add('does not detect non-anagrams with identical checksum');
      }
  
      if (!ListEquality().equals(anagram.findAnagrams('Orchestra', <String>['cashregister', 'Carthorse', 'radishes']),<String>['Carthorse'])){
        fail_array.add('detects anagrams case-insensitively');
      }  
  
      if (!ListEquality().equals(anagram.findAnagrams('Orchestra', <String>['cashregister', 'carthorse', 'radishes']),<String>['carthorse'])){
        fail_array.add('detects anagrams using case-insensitive subject');
      }   
   
      if (!ListEquality().equals(anagram.findAnagrams('orchestra', <String>['cashregister', 'Carthorse', 'radishes']),<String>['Carthorse'])){
        fail_array.add('detects anagrams using case-insensitive subject');
      }    
   
      if (!ListEquality().equals(anagram.findAnagrams('go', <String>['go Go GO']),<String>[])){
        fail_array.add('does not detect an anagram if the original word is repeated');
      } 
  
      if (!ListEquality().equals(anagram.findAnagrams('tapper', <String>['patter']),<String>[])){
        fail_array.add('does not detect an anagram if the original word is repeated');
      }  
  
      if (!ListEquality().equals(anagram.findAnagrams('BANANA', <String>['BANANA']),<String>[])){
        fail_array.add('words are not anagrams of themselves');
      }
  
      if (!ListEquality().equals(anagram.findAnagrams('BANANA', <String>['Banana']),<String>[])){
        fail_array.add('words are not anagrams of themselves even if letter case is partially different');
      } 
  
      if (!ListEquality().equals(anagram.findAnagrams('BANANA', <String>['banana']),<String>[])){
        fail_array.add('words are not anagrams of themselves even if letter case is completely different');
      }    
  
      if (!ListEquality().equals(anagram.findAnagrams('LISTEN', <String>['LISTEN','Silent']),<String>['Silent'])){
        fail_array.add('words other than themselves can be anagrams');
      }   
      
      fail_array = [for(var str in fail_array) '(${str}) test fails'];
      
      if(fail_array.length > 0){
        _result(false,fail_array);
      } else {
        _result(true, ["all sections pass!"]);
      }
}
