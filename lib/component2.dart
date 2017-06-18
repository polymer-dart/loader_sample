import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/paper_material.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/paper_fab.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:html5/html.dart';
import 'package:polymer_elements/paper_dialog.dart';

@PolymerRegister('component-two',template:'component2.html')
abstract class ComponentTwo extends PolymerElement{
  goBack(Event ev) => confirmDlg.opened=true;
  goOn([_]) =>  dispatchEvent(new CustomEvent('go-back',new CustomEventInit()
    ..composed=true));

  PaperDialog get confirmDlg => shadowRoot.querySelector('#confirmDlg');


}
