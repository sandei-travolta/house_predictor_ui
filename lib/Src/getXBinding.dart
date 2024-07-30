import 'package:get/get.dart';

import 'Controllers/UserStateController.dart';

class AppBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UserStateControler());
  }

}