void main() {
  final hamming = Hamming();
      List<String> failArray = [];
      
      if (hamming.distance('', '') != 0){
        failArray.add('empty strands');
      }
      
      if (hamming.distance('A', 'A') != 0){
        failArray.add('single letter identical strands');
      }  
  
      if (hamming.distance('G', 'T') != 1){
        failArray.add('single letter different strands');
      }    
  
      if (hamming.distance('GGACTGAAATCTG', 'GGACTGAAATCTG') != 0){
        failArray.add('long identical strands');
      }      
  
      if (hamming.distance('GGACGGATTCTG', 'AGGACGGATTCT') != 9){
        failArray.add('long different strands');
      }  
  
      failArray = [for(var str in failArray) '($str) test fails'];
  
      if(failArray.isNotEmpty){
        _result(false,failArray);
      } else {
        _result(true, ["all sections pass!"]);
      }

//   final mustEqual = predicate((Error e) => e is ArgumentError && e.message == 'strands must be of equal length',
//       'an ArgumentError with the message "strands must be of equal length"');

//   group('Hamming', () {
//     test('empty strands', () {
//       final result = hamming.distance('', '');
//       expect(result, equals(0));
//     }, skip: false);

//     test('single letter identical strands', () {
//       final result = hamming.distance('A', 'A');
//       expect(result, equals(0));
//     }, skip: true);

//     test('single letter different strands', () {
//       final result = hamming.distance('G', 'T');
//       expect(result, equals(1));
//     }, skip: true);

//     test('long identical strands', () {
//       final result = hamming.distance('GGACTGAAATCTG', 'GGACTGAAATCTG');
//       expect(result, equals(0));
//     }, skip: true);

//     test('long different strands', () {
//       final result = hamming.distance('GGACGGATTCTG', 'AGGACGGATTCT');
//       expect(result, equals(9));
//     }, skip: true);

//     test('disallow first strand longer', () {
//       expect(() => hamming.distance('AATG', 'AAA'), throwsA(mustEqual));
//     }, skip: true);

//     test('disallow second strand longer', () {
//       expect(() => hamming.distance('ATA', 'AGTG'), throwsA(mustEqual));
//     }, skip: true);

//     test('disallow empty first strand', () {
//       expect(() => hamming.distance('', 'G'), throwsA(mustEqual));
//     }, skip: true);

//     test('disallow empty second strand', () {
//       expect(() => hamming.distance('G', ''), throwsA(mustEqual));
//     }, skip: true);
//   });
}

