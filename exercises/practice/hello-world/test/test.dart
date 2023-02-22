void main() {
    if (HelloWorld().hello() == 'Hello, World!') { 
      _result(true); 
    } else { 
      _result(false, ['That\'s not quite right. Keep trying!']); 
    } 
}
