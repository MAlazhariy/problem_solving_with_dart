/// There's a staircase with N steps, and you can climb 1 or 2 steps at a time.
/// Given N, write a function that returns the number of unique ways you can climb the staircase.
/// The order of the steps matters.
///
/// For example, if N is 4, then there are 5 unique ways:
///
/// 1, 1, 1, 1
/// 2, 1, 1
/// 1, 2, 1
/// 1, 1, 2
/// 2, 2
///
/// What if, instead of being able to climb 1 or 2 steps at a time,
/// you could climb any number from a set of positive integers X?
/// For example, if X = {1, 3, 5}, you could climb 1, 3, or 5 steps at a time.
///
/// Generalize your function to take in X.
// Asked by Amazon

// Resolved by MOSTAFA ALAZHARIY.


int staircase(int n,List x){ // O(x*n)
  // z[n] = f(n)
  List<int> z = [1];

  // for example:
  // n = 3
  // x = [ 1, 2, 3 ]

  // f(1) = f(1-1) + f(1-2) + f(1-3);
  // f(1) = f(0) + f(-1) + f(-2);
  // f(1) = z[0];
  // f(1) = 1;

  // z = [ 1, f(1) ]
  // z = [ 1, 1 ]

  // we'll repeat this step n times until reach to f(n)

  for(int i = 1; i <= n; i++){
    int result = 0;

    // loop gives value to f(i) = ?
    for(int j in x){
      int y = i-j;
      // check if f(y) <  0 .. then continue
      // else  if f(y) >= 0 .. then result += z[y]
      if(y < 0) continue;
      result += z[y];
    }

    z.add(result);
  }

  return z[n];
}


//  // First case: when x = [1,2]

//  // recursion function => O(2^n)
//  int stairCase1(int n){
//    if(n<=1) return 1;
//    return stairCase1(n - 1) + stairCase1(n - 2);
//  }

//   // O(n)
//   int stairCase2(int n) {
//     int a = 1;
//     int b = 2;
//
//     for (var i = 0; i < n - 2; i++) {
//       b = b + a;
//       a = b - a;
//     }
//     return b;
//   }

