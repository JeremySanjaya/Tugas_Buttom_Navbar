import 'package:get/get.dart';
import 'package:tugas_buttom_navbar/controller/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
