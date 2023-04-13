void main() {
  final bob = Bob();
      List<String> failArray = [];
      
      if (bob.response('Tom-ay-to, tom-aaaah-to.') != 'Whatever.'){
        failArray.add('stating something');
      }
      
      if (bob.response('WATCH OUT!') != 'Whoa, chill out!'){
        failArray.add('shouting');
      }  
      
      if (bob.response('FCECDFCAAB') != 'Whoa, chill out!'){
        failArray.add('shouting gibberish');
      } 
      
      if (bob.response('Does this cryogenic chamber make me look fat?') != 'Sure.'){
        failArray.add('asking a question');
      } 
      
      if (bob.response('You are, what, like 15?') != 'Sure.'){
        failArray.add('asking a numeric question');
      } 
      
      if (bob.response('fffbbcbeab?') != 'Sure.'){
        failArray.add('asking gibberish');
      }
  
      if (bob.response('Hi there!') != 'Whatever.'){
        failArray.add('talking forcefully');
      }
        
      if (bob.response('It\'s OK if you don\'t want to go work for NASA.') != 'Whatever.'){
        failArray.add('using acronyms in regular speech');
      }
         
      if (bob.response('WHAT\'S GOING ON?') != 'Calm down, I know what I\'m doing!'){
        failArray.add('forceful question');
      }
         
      if (bob.response('1, 2, 3 GO!') != 'Whoa, chill out!'){
        failArray.add('shouting numbers');
      }
           
      if (bob.response('1, 2, 3') != 'Whatever.'){
        failArray.add('no letters');
      }
           
      if (bob.response('4?') != 'Sure.'){
        failArray.add('question with no letters');
      }
           
      if (bob.response('ZOMG THE %^*@#\$(*^ ZOMBIES ARE COMING!!11!!1!') != 'Whoa, chill out!'){
        failArray.add('shouting with special characters');
      }
           
      if (bob.response('I HATE THE DENTIST') != 'Whoa, chill out!'){
        failArray.add('shouting with no exclamation mark');
      }
           
      if (bob.response('Ending with ? means a question.') != 'Whatever.'){
        failArray.add('statement containing question mark');
      }
           
      if (bob.response(':) ?') != 'Sure.'){
        failArray.add('non-letters with question');
      }
           
      if (bob.response('Wait! Hang on. Are you going to be OK?') != 'Sure.'){
        failArray.add('prattling on');
      }
           
      if (bob.response('') != 'Fine. Be that way!'){
        failArray.add('silence');
      }
           
      if (bob.response('          ') != 'Fine. Be that way!'){
        failArray.add('prolonged silence');
      }
           
      if (bob.response('\t\t\t\t\t\t\t\t\t\t') != 'Fine. Be that way!'){
        failArray.add('alternate silence');
      }
           
      if (bob.response('\nDoes this cryogenic chamber make me look fat?\nNo.') != 'Whatever.'){
        failArray.add('multiple line question');
      }
           
      if (bob.response('         hmmmmmmm...') != 'Whatever.'){
        failArray.add('starting with whitespace');
      }
           
      if (bob.response('Okay if like my  spacebar  quite a bit?   ') != 'Sure.'){
        failArray.add('ending with whitespace');
      }
           
      if (bob.response('\n\r \t') != 'Fine. Be that way!'){
        failArray.add('other whitespace');
      }
           
      if (bob.response('This is a statement ending with whitespace      ') != 'Whatever.'){
        failArray.add('non-question ending with whitespace');
      }
    
      failArray = [for(var str in failArray) '($str) test fails'];
      
      if(failArray.isNotEmpty){
        _result(false,failArray);
      } else {
        _result(true, ["all sections pass!"]);
      }
}
