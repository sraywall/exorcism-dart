class Hamming {
  distance(strandOne,strandTwo){
    return [for(var i = 0; i < strandOne.length; i++) if(strandOne[i] != strandTwo[i]) 1].length;
  }
}
