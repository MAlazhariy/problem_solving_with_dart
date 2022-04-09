import 'dart:developer';
import 'dart:io';

import 'run-length_encoding/length_encoding.dart';

main() {
  // String encode = lengthEncoder('AAAABBBCCDAA');
  // print(encode);
  //
  // String decode = lengthDecoder('4A3B2C1D2A');
  // print(decode);

  List array = [4,'A', 3,'B', 2,'C', 1,'D', 2,'A',];

  for (int i = 0; i<array.length; i+=2){
    int repeatTimes = array[i];
    String character = array[i+1];

    for(int j=0; j<repeatTimes; j++){
      stdout.write(character); // => System.Out.print
    }
  }

  // Output: AAAABBBCCDAA


}