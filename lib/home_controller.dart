import 'package:get/get.dart';

class HomeController extends GetxController {
  /// .obs for variable initialize to make it observing for any changes (Streaming)
  /// .obs change variable data type and returned Rx from variable type like
  /// this example return RxInt and to get integer we need to call myVariable.value like in incrementCounterByObserving();
  RxInt counterObserving = 0.obs;
  int counter = 0;

  /// .value returned the data type of .obs variable like this example
  /// .value of counterObserving is integer
  void incrementCounterByObserving() => counterObserving.value++;

  void decrementCounterByObserving() => counterObserving.value--;

  void incrementCounterByGetBuilder() {
    counter++;

    ///update(); like notifyListener and used with GetBuilder()
    update();
  }

  void decrementCounterByGetBuilder() {
    counter--;
    update();
  }

  /// on init and dispose is the same of init and dispose in StatefulWidget
  /// and linked with screen which extends from this controller
  @override
  void onInit() {
    /// called when screen rendered which extends from this controller
    super.onInit();
  }

  ///dispose
  @override
  void dispose() {
    /// called when disposed screen which extends from this controller
    super.dispose();
  }
}
