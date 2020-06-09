import 'package:pip_services3_components/pip_services3_components.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import './HelloWorldController.dart';
import './HelloWorldRestService.dart';

class HelloWorldServiceFactory extends Factory {
  HelloWorldServiceFactory() : super() {
    registerAsType(
        Descriptor('hello-world', 'controller', 'default', '*', '1.0'),
        HelloWorldController);
    registerAsType(Descriptor('hello-world', 'service', 'http', '*', '1.0'),
        HelloWorldRestService);
  }
}
