import 'package:loader_sample/module1.dart';
import 'package:polymer_element/polymer_element.dart';

@init
void startMain() {
  print('This will get executed instead');
  startModule1();
}

main(List<String> args) {
  print("This will never get executed");
}
