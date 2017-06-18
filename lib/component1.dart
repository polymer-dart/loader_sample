import 'package:polymer_element/polymer_element.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/iron_flex_layout.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/neon_animated_pages.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/neon_animatable.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/fade_in_animation.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/fade_out_animation.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/slide_from_bottom_animation.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/web_animations_js.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/paper_styles.dart';
// ignore: UNUSED_IMPORT
import 'package:polymer_elements/paper_button.dart';
import 'package:polymer_elements/app_toolbar.dart';
import 'package:polymer_elements/paper_spinner.dart';
import 'package:polymer_element/require.dart';
// ignore: UNUSED_IMPORT
import 'package:html5/html.dart';
import 'dart:async';

@PolymerRegister('component-one', template: 'component1.html')
abstract class ComponentOne extends PolymerElement {
  String currentPage;
  //var animationConfig = defaultConfig;

  bool loading;

  bool module2Loaded = false;

  loadTwo(Event e) async {
    if (!module2Loaded) {
      loading = true;
      await require('web__module2');
      module2Loaded = true;
      loading = false;
    }
    currentPage = 'second-page';
  }

  toFirst(Event ev) {
    currentPage = 'first-page';
  }

  connectedCallback() {
    super.connectedCallback();
    currentPage = 'empty-page';
    new Future(() => currentPage = 'first-page');
  }
}
