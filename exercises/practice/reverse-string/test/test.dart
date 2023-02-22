void main() {
    if (reverse('') == '') { 
      _result(true, ['empty string passed']); 
    } else { 
      _result(false, ['empty string fails']); 
    } 
    if (reverse('robot') == 'tobor') { 
      _result(true, ['a word passed']); 
    } else { 
      _result(false, ['a word fails']); 
    } 
    if (reverse('Ramen') == 'nemaR') { 
      _result(true, ['a capitalized word passed']); 
    } else { 
      _result(false, ['a capitalized word fails']); 
    } 
    if (reverse('I\'m hungry!') == '!yrgnuh m\'I') { 
      _result(true, ['a sentence with punctuation passed']); 
    } else { 
      _result(false, ['a sentence with punctuation fails']); 
    } 
    if (reverse('drawer') == 'reward') { 
      _result(true, ['an even-sized word passed']); 
    } else { 
      _result(false, ['an even-sized word fails']); 
    } 
    if (reverse('racecar') == 'racecar') { 
      _result(true, ['a palindrome passed']); 
    } else { 
      _result(false, ['a palindrome fails']); 
    } 
}
