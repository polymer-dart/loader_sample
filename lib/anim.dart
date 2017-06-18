@JS()
library anim_helpers;

import 'package:js/js.dart';

@JS()
@anonymous
class AnimConfig {
  external SingleAnimConfig get entry;
  external SingleAnimConfig get exit;
  external factory AnimConfig({SingleAnimConfig entry,SingleAnimConfig exit});
}

@JS()
@anonymous
class SingleAnimConfig {
  external String get name;
  external Timings get timings;
  external factory SingleAnimConfig({String name,Timings timings});
}

@JS()
@anonymous
class Timings {
  external num get delay;
  external num get duration;
  external String get easing;
  external factory Timings({num delay, num duration, String easing});
}

AnimConfig defaultConfig = new AnimConfig(
  entry: new SingleAnimConfig(name:'fade-in-animation',timings: new Timings(duration:1000,easing: 'ease-in')),
  exit: new SingleAnimConfig(name:'fade-out-animation',timings: new Timings(duration:200,easing:'ease-out'))
);
