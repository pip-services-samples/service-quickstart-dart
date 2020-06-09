import 'package:angel_framework/angel_framework.dart' as angel;

import 'package:pip_services3_rpc/pip_services3_rpc.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import './HelloWorldController.dart';

class HelloWorldRestService extends RestService {
  HelloWorldController controller;

  HelloWorldRestService() : super() {
    baseRoute = '/hello_world';
    dependencyResolver.put(
        'controller', Descriptor('hello-world', 'controller', '*', '*', '1.0'));
  }

  @override
  void setReferences(references) {
    super.setReferences(references);
    controller =
        dependencyResolver.getOneRequired<HelloWorldController>('controller');
  }

  @override
  void register() {
    registerRoute('get', '/greeting', null,
        (angel.RequestContext req, angel.ResponseContext res) async{
      var name = req.queryParameters['name'];
      sendResult(req, res, null, await controller.greeting(name));
    });
  }
}
