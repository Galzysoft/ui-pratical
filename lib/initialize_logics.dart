import 'package:get/get.dart';
import 'package:ruddy/pages/my_page/logic.dart';

class InitializeLogics extends Bindings{
  /// these is a place where we  instantiate our get controllers
  @override
  void dependencies() {
    /// a getxcontroller instance
    /// /// i re located this  for me to be able to  put the  getx controller once
    /// in the getx scope of controllers that are been usecd
    /// lazyput is used to initialize an asynchronous  function
    Get.lazyPut(() => MyPageLogic());

    // TODO: implement dependencies
  }

}