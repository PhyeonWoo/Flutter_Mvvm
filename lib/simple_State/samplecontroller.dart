// Model 역할
import 'package:get/get.dart';

class SampleController extends GetxController {

  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    update();
  }

  void decrement() {
    _counter--;
    update();
  }
}