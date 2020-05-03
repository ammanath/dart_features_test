import 'package:dart_features_test/dart_features_test.dart' as dart_features_test;
import 'dart:math';

void main(List<String> arguments) {
  const len = 5;
  const randomLevel = 13;
const startLevel = 6;
  var l1 = <int>[];
  var l2 = <int>[];
  
  final r = Random();
  var resultList = <String>[];

  // l1 = [1,6,6,2,1,1];
  // l2 = [2,3,1,3,2,6];
  // l1 = List.generate(len, (index) => r.nextInt(level));
  // l2 = List.generate(len, (index) => r.nextInt(level));

  var t1, t2, comb;
  while(l1.length<5){
      t1 = r.nextInt(randomLevel);
      if(t1<startLevel){
        t1 = t1+startLevel;
      }
      t2 = r.nextInt(randomLevel);
      if(t2<startLevel){
        t2 = t2+startLevel;
      }
      comb = '$t1$t2';
      if(!resultList.contains(comb)){
        resultList.add(comb);
        l1.add(t1);
        l2.add(t2);
      }else{
        print('Skipping $comb');
      }
  }
  
  print('list is $l1 , $l2 , $resultList');


}

