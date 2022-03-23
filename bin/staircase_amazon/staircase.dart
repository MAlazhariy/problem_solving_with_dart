// There's a staircase with N steps, and you can climb 1 or 2 steps at a time.
// Given N, write a function that returns the number of unique ways you can climb the staircase.
// The order of the steps matters.
//
// For example, if N is 4, then there are 5 unique ways:
//
// 1, 1, 1, 1
// 2, 1, 1
// 1, 2, 1
// 1, 1, 2
// 2, 2
//
//
// What if, instead of being able to climb 1 or 2 steps at a time,
// you could climb any number from a set of positive integers X?
// For example, if X = {1, 3, 5}, you could climb 1, 3, or 5 steps at a time.
//
// Generalize your function to take in X.


class StairCase {

  final String provider = "Amazon";

  static int func(int n,List x){
    List<int> z = [1];
    // n = 3
    // x = [ 1, 2, 3 ]

    // f(1) = f(1-1) + f(1-2) + f(1-3);
    /// we will repeat this step N times until reach to f(n)
    // f(1) = f(0) + f(-1) + f(-2);

    // z = [ 1, f(1) ]
    // z = [ 1, 1 ]

    for(int i = 1; i <= n; i++){ /// N times
      int result = 0; /// 1
      // i = 1
      for(int j in x){ /// X times
        // f(1) = ?
        // check if f(i-j) => f(1-1) == 0 .. then result += z[(1-1)] => z[0] => 1
        // else  if f(i-j) => f(1-2) <  0 .. then continue
        // else  if f(i-j) > 0 .. then result += z[i-j]
        if(i-j < 0) continue;
        result += z[i-j];
      }
      z.add(result);
    }

    return z[n];

  }
  /* Big O: O(X*N) */

//  // First case: when x = [1,2]

//  // recursion function => O()
//  int stairCase(int n){
//    if(n<=1) return 1;
//    return stairCase(n - 1) + stairCase(n - 2);
//  }

//   // for loop => O(n)
//   int stairCase(int n) {
//     var a = 1;
//     var b = 2;
//
//     for (var i = 0; i < n - 2; i++) {
//       b = b + a;
//       a = b - a;
//     }
//     return b;
//   }
//
//    print(stairCase(7));


  static printValue({
    int n = 11,
    List<int> x = const [1,2,3],
}){
    print(func(n,x));
  }

}
