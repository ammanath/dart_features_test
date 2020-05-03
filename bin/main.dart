import 'package:dart_features_test/dart_features_test.dart' as dart_features_test;
import 'dart:math';

void main(List<String> arguments) {
  const len = 5;
  const level = 7;

  var l1 = <int>[len];
  var l2 = <int>[len];
  
  final r = Random();

  l1 = [1,6,6,2,1,1];
  l2 = [2,3,1,3,2,6];
  // l1 = List.generate(len, (index) => r.nextInt(level));
  // l2 = List.generate(len, (index) => r.nextInt(level));

  var resultList = <int>[];
  
  for(var i=0;i<l1.length;i++){
      resultList.add(l1[i] * l2[i]);
  }
  

  print('list is $l1 , $l2 , $resultList');

  //print(resultList.map();

}

List<int> listRandom(int maxNumber, int numberOfGenerations) {

  final random = Random();
  var currentOptions = List<int>.generate(maxNumber, (i) => i);

  var list = List.generate(numberOfGenerations, (_) {
    final index = random.nextInt(currentOptions.length);
    final result = currentOptions[index];
    currentOptions.removeAt(index);    
    return result;
  });
  return list;
}