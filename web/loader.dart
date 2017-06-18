import 'package:loader_sample/loader.dart';
import 'package:polymer_element/require.dart';

main(List<String> args) async {
  if (!loaded) {
    throw "Error while loading";
  }

  // require load default module

  await require('web__module1');


}
