import 'package:get/get.dart';
import 'home_controller.dart';

///ControllerBinding like init provider in MultiProvider in main and called in GetMaterialApp
class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    ///usually getX delete controllers from stack if screen disposed we can use
    /// Get.lazyPut and Get.put but the difference is lazyPut called when using needed
    /// and any .put controller called in beginning of project
    ///for more details follow this link
    ///=> https://chornthorn.github.io/getx-docs/dependency-management/differences-method/
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}
