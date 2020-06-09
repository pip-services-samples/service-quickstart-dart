import 'dart:async';

import 'package:pip_services3_commons/pip_services3_commons.dart';

class HelloWorldController implements IConfigurable {
  var defaultName;
  HelloWorldController() {
    defaultName = 'Pip User';
  }

  @override
  void configure(ConfigParams config) {
    defaultName = config.getAsStringWithDefault('default_name', defaultName);
  }

  Future<String> greeting(name) async{
    return 'Hello, ' + (name ?? defaultName) + '!';
  }
}
