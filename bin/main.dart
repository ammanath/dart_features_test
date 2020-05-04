import 'dart:math';

void main(List<String> arguments) {
  const len = 5;
  const randomLevel = 7; //random generator upto this level (not inclusive)
  const startLevel = 0; //lowest digit in the quiz
  const allow12and21 = true;

  List<List> l1 = getListForQuiz(len, randomLevel, startLevel, allow12and21);

  print('list is ${l1[0]}  ');
  print('value is ${l1[1]}');
}

List<List> getListForQuiz(
    int len, int randomLevel, int startLevel, bool allow12and21) {
  // const len = 5;
  // const randomLevel = 7; //random generator upto this level (not inclusive)
  // const startLevel = 0; //lowest digit in the quiz
  // const allow12and21 = true;

  var l1 = <int>[];
  var l2 = <int>[];

  final r = Random();
  var resultList = <String>[];

  var t1, t2, comb, effort = 0;
  while (l1.length < len && effort < 100) {
    effort++;
    t1 = r.nextInt(randomLevel);
    if (t1 < startLevel) {
      t1 = t1 + startLevel;
    }
    t2 = r.nextInt(randomLevel);
    if (t2 < startLevel) {
      t2 = t2 + startLevel;
    }
    if (allow12and21) {
      comb = '$t1$t2';
    } else {
      if (t1 > t2) {
        comb = '$t2$t1';
      }
    }
    if (!resultList.contains(comb)) {
      resultList.add(comb);
      l1.add(t1);
      l2.add(t2);
    } else {
      print('Skipping $comb');
    }
  }

  return [l1, l2];
}
