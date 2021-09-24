import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Get.find<>(); like Provider.of<MyProvider>(context);
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
