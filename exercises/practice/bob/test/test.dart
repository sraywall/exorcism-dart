void main() {
  final wordCount = WordCount();
      List<String> failArray = [];
      
      if (!MapEquality().equals(wordCount.countWords('word'), {'word': 1})){
        failArray.add('count one word');
      }
      
      if (!MapEquality().equals(wordCount.countWords('one of each'), {'one': 1, 'of': 1, 'each': 1})){
        failArray.add('count one of each word');
      }  
      
      if (!MapEquality().equals(wordCount.countWords('one fish two fish red fish blue fish'), {'one': 1, 'fish': 4, 'two': 1, 'red': 1, 'blue': 1})){
        failArray.add('multiple occurrences of a word');
      }   
      
      if (!MapEquality().equals(wordCount.countWords('one,two,three'), {'one': 1, 'two': 1, 'three': 1})){
        failArray.add('handles cramped lists');
      }
      
      if (!MapEquality().equals(wordCount.countWords('one,\ntwo,\nthree'), {'one': 1, 'two': 1, 'three': 1})){
        failArray.add('handles expanded lists');
      }  
      
      if (!MapEquality().equals(wordCount.countWords('car: carpet as java: javascript!!&@\$%^&'), {'car': 1, 'carpet': 1, 'as': 1, 'java': 1, 'javascript': 1})){
        failArray.add('ignore punctuation');
      }
      
      if (!MapEquality().equals(wordCount.countWords('testing, 1, 2 testing'), {'testing': 2, '1': 1, '2': 1})){
        failArray.add('include numbers');
      }  
      
      if (!MapEquality().equals(wordCount.countWords('go Go GO Stop stop'), {'go': 3, 'stop': 2})){
        failArray.add('normalize case');
      }  
  
        
      if (!MapEquality().equals(wordCount.countWords('\'First: don\'t laugh. Then: don\'t cry. You\'re getting it.\''), 
                                  {
                                    'first': 1,
                                    'don\'t': 2,
                                    'laugh': 1,
                                    'then': 1,
                                    'cry': 1,
                                    'you\'re': 1,
                                    'getting': 1,
                                    'it': 1
                                  }
                               )
         ){
        failArray.add('with apostrophes');
      }
   
      if (!MapEquality().equals(wordCount.countWords('Joe can\'t tell between \'large\' and large.'), {'joe': 1, 'can\'t': 1, 'tell': 1, 'between': 1, 'large': 2, 'and': 1})){
        failArray.add('with quotations');
      } 
        
      if (!MapEquality().equals(wordCount.countWords('Joe can\'t tell between app, apple and a.'), {'joe': 1, 'can\'t': 1, 'tell': 1, 'between': 1, 'app': 1, 'apple': 1, 'and': 1, 'a': 1})){
        failArray.add('substrings from the beginning');
      } 
        
      if (!MapEquality().equals(wordCount.countWords(' multiple   whitespaces'), {'multiple': 1, 'whitespaces': 1})){
        failArray.add('multiple spaces not detected as a word');
      }
        
      if (!MapEquality().equals(wordCount.countWords(',\n,one,\n ,two \n \'three\''), {'one': 1, 'two': 1, 'three': 1})){
        failArray.add('alternating word separators not detected as a word');
      }
        
      if (!MapEquality().equals(wordCount.countWords('can, can\'t, \'can\'t\''), {'can': 1, 'can\'t': 2})){
        failArray.add('quotation for word with apostrophe');
      }
  
      failArray = [for(var str in failArray) '($str) test fails'];
      
      if(failArray.isNotEmpty){
        _result(false,failArray);
      } else {
        _result(true, ["all sections pass!"]);
      }
}
