import 'package:get/get.dart';
import 'package:myapp/app/modules/login/bindings/login_binding.dart';


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}