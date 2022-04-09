/// This problem was asked by Amazon.
///
/// Run-length encoding is a fast and simple method of encoding strings.
/// The basic idea is to represent repeated successive characters as a single count
/// and character. For example,
/// the string "AAAABBBCCDAA" would be encoded as "4A3B2C1D2A".
///
/// Implement run-length encoding and decoding.
/// You can assume the string to be encoded have no digits
/// and consists solely of alphabetic characters.
/// You can assume the string to be decoded is valid.
///
/// solved in 23:56 minutes

// AAAA BBBCCD A  A
// 0123 456789 10 11

// 17:28 mins .. O(n)
String lengthEncoder(String text){

  String result = '';
  String a;
  int index = 0;

  for(int i=1; i<text.length; i++){
    a = text[index]; // the main alphabet to compare with _a
    String _a = text[i]; // the current alphabet in for loop

    if(a != _a){
      int count = i - index; // get count of alphabet [a]
      result += '$count$a'; // add count of character to the result var
      index = i;
    } else if (i == text.length-1) {
      int count = i - index +1; // get count of alphabet [a]
      result += '$count$a';
    }

  }

  return result;

}

// 06:28 mins .. O(n)
String lengthDecoder(String text){

  String result = '';

  for(int i =0; i<text.length; i+=2){
    int repeat = int.parse(text[i]); // get int value
    String a = text[i+1]; // get the character to repeat

    for(int j=0; j<repeat; j++){
      result += a;
    }
  }

  return result;
}