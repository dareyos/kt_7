import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_controller.dart';

class CarView extends GetView<CarController> {
  const CarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 83, 88, 244),
        title: const Text("Машина Шайлушая"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Car: ${controller.car.brand} ${controller.car.model}',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Color: ${controller.car.color}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          controller.car.availability == false
              ? const Text(
                  'NOT IN STOCK',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                )
              : Text(
                  'Car price: \$${controller.car.price.toString()}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 9, 7, 39),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
        ],
      )),
    );
  }
}