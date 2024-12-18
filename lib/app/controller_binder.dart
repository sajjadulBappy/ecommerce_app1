import 'package:ecommerce_app1/features/common/ui/controller/button_nav_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ButtonNavController());
  }

}