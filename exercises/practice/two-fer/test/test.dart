void main() {
     if (twoFer() != 'One for you, one for me.') { 
      _result(false, ['no name given']); 
    } else if (twoFer('Alice') != 'One for Alice, one for me.') { 
      _result(false, ['a name given']); 
    } else if (twoFer('Bob') != 'One for Bob, one for me.') {
      _result(false, ['another name given']); 
    } else {
      _result(true);
    }
}
