import 'package:counter_ap/controllers/counter_controller.dart';
import 'package:counter_ap/models/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final CounterController c = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: Obx(() {
        return Text("Counter :${c.counter}");
      })),
      body: Center(
          child: ElevatedButton(
        child: Text("Go To Other"),
        onPressed: () {
          Get.to(Other());
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: c.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final CounterController c = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
          title: GetBuilder<CounterController>(
        init: CounterController(),
        builder: (controller) {
          return Text("Clicks:${controller.counter.value.toString()}");
        },
      )),
      body: Center(
          child: ElevatedButton(
        child: Text("Go To Other"),
        onPressed: () {
          Get.to(Other());
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: c.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
