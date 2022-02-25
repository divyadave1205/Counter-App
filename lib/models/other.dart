import 'package:counter_ap/controllers/counter_controller.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class Other extends StatelessWidget {
  final CounterController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "${c.counter}",
        ),
      ),
    );
  }
}
