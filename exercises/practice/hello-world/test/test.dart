void main() {
    if (HelloWorld().hello().equals('Hello,World!')) { 
      _result(true); 
    } else { 
      _result(false, ['That\'s not quite right. Keep trying!']); 
    } 
}
