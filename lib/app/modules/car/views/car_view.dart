import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_controller.dart';

class CarView extends GetView<CarController> {
  const CarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(172, 201, 230, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 83, 88, 244),
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
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 59, 58, 58)),
          ),
          Text(
            'Car model year: ${controller.car.year}',
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 59, 58, 58)),
          ),
          Text(
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
