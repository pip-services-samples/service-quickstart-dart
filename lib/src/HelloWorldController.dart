import 'dart:async';

class HelloWorldController {
  var defaultName;
  HelloWorldController() {
    defaultName = 'Pip User';
  }

  void configure(config) {
    defaultName = config.getAsStringWithDefault('default_name', defaultName);
  }

  Future<String> greeting(name) async{
    return 'Hello, ' + (name ?? defaultName) + '!';
  }
}
