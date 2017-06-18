import 'package:polymer_element/polymer_element.dart';
// ignore: UNUSED_IMPORT
import 'package:loader_sample/component1.dart';
// ignore: UNUSED_IMPORT
import 'package:html5/html.dart';

@init
void startModule1() {
  print('module 1 loaded');
  HTMLDivElement div = document.querySelector('[loader]');
  div.remove();

  ComponentOne one = document.createElement('component-one');
  document.querySelector('body').appendChild(one);
}
