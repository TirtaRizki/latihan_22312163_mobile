import 'package:get/get.dart';


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}

class LoginController {
  get cEmail => null;

  get cPass => null;
}
