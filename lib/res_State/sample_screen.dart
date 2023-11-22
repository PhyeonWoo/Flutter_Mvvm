import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training/res_State/sample_controller.dart';

class SampleScreen extends StatelessWidget {

  final controller = Get.put(SampleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 반응 상태 관리
          Obx(() => Text(
            '${controller.counter}',
            style: const TextStyle(fontSize: 40),
          ),
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
  }
}