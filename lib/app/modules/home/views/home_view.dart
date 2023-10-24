import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(172, 201, 230, 1),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Машинки Шайлушая'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("Status: ${controller.status.value.name}")),
              TextButton(
                  onPressed: () => controller.getData(),
                  child: const Text("get data")),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.cars.length,
                    itemBuilder: (context, index) {
                      var curCar = controller.cars[index];
                      return GestureDetector(
                        onTap: () => Get.toNamed('car', arguments: curCar),
                        child: Card(
                          child: ListTile(
                            leading: Text(
                              '№${curCar.id.toString()}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 37, 25, 83)),
                            ),
                            title: Text('${curCar.brand} ${curCar.model}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text("${curCar.color}, car year: ${curCar.year}"),
                            trailing: curCar.availability == false
                                ? const Text(
                                    'NOT IN STOCK',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 142, 124, 124),
                                      fontSize: 15,
                                    ),
                                  )
                                : Text(
                                    '\$${curCar.price.toString()}',
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 32, 27, 116),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

// class CarWidget extends StatelessWidget {
//   const CarWidget({
//     super.key,
//     required this.curCar,
//   });

//   final Car curCar;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 1,
//       child: ListTile(
//         leading: Text(curCar.id.toString()),
//         title: Text("${curCar.brand} ${curCar.model}"),
//         subtitle: Text(curCar.price.toString()),
//       ),
//     );
//   }
// }
