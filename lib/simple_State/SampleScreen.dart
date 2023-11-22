// viewModel역할

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training/simple_State/samplecontroller.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  // final controller = Get.put(SampleController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SampleController>(
      init: SampleController(),
      builder: (SampleController controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${controller.counter}',
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: controller.increment,
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 40),
                  ElevatedButton(
                    onPressed: controller.decrement,
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}