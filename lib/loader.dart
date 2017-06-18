import 'package:polymer_element/polymer_element.dart';

bool loaded = false;

@init
void startLoader() {
  print('loader started');
  loaded = true;
}
