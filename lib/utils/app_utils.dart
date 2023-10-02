import 'dart:math';

class AppUtils {
  static bool randomBool() {
    int index = Random().nextInt(10);
    return index % 2 == 0;
  }

  static int randomPrice() {
    return Random().nextInt(41) + 10;
  }
}