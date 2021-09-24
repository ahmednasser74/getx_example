import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
///extends from GetView<HomeController> to get all fields of HomeController by controller.
class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Get.find<MyController>(); like Provider.of<MyProvider>(context);
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Counter By Streaming: '),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: controller.decrementCounterByObserving,
                icon: const Icon(Icons.remove),
              ),
              /// Obx is observing to .obs variables im my controller
              /// and listen to any changes of this variables
              Obx(
                () => Text(controller.counterObserving.toString()),
              ),
              IconButton(
                onPressed: controller.incrementCounterByObserving,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text('Counter By GetBuilder: '),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: homeController.decrementCounterByGetBuilder,
                icon: const Icon(Icons.remove),
              ),
              /// GetBuilder is the same of Consumer in provider
              GetBuilder<HomeController>(
                builder: (_) => Text(homeController.counter.toString()),
              ),
              IconButton(
                onPressed: homeController.incrementCounterByGetBuilder,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
