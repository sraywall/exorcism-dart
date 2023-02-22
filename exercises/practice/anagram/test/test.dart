void main() {
    if (reverse('') != '') { 
      _result(false, ['empty string fails']); 
    } else if (reverse('robot') != 'tobor') { 
      _result(false, ['a word fails']); 
    } else if (reverse('Ramen') != 'nemaR') {
      _result(false, ['a capitalized word fails']); 
    } else if (reverse('I\'m hungry!') != '!yrgnuh m\'I') { 
      _result(false, ['a sentence with punctuation fails']); 
    } else if (reverse('drawer') != 'reward') { 
      _result(false, ['an even-sized word fails']); 
    } else if (reverse('racecar') != 'racecar') { 
      _result(false, ['a palindrome fails']); 
    } else {
      _result(true);
    }   
}
