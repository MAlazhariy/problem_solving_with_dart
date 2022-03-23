// @dart=2.9
// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:io';

void badDays(){
  int index;
  int index2;
  int badDaysInt = 0;
  List values = [
    1,
    2,
    3,
    5,
    7,
    8,
    5,
    3,
    7,
    8,
    6,
    1,
    8,
    7,
  ];



  bool isFirstSmaller(int firstNum, int lastNum,) {
    return (firstNum - lastNum).isNegative;
  }





  /// 1. query
  /// 2. List length
  /// 3. ... Enter the elements
  /// last. print the values of bad days


  int query = int.parse(stdin.readLineSync());

  List<List> lists = [];


  for(int i=0; i<query; i++){
    int length = int.parse(stdin.readLineSync());
    lists.add([]);
    lists[i] = json.decode('[${stdin.readLineSync().replaceAll(' ', ',')}]');
  }

  lists.forEach((values) {
    index = values.length-1;

    for(int i = values.length-2; i>=0; i--){
      index2 = i;
      if(!isFirstSmaller(values[index],values[index2],)){
        badDaysInt += (index-index2-1);
        index=index2;
        if (index==0) break;
      }
      if(i==0 && values[index]<values[0]){
        badDaysInt += index;
      } else if(i==0 && values[index]==values[0]){
        badDaysInt += (index-1);
      }
    }
    print(badDaysInt);
    badDaysInt=0;
  });
}