import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marcador/config/controller/getx_controller.dart';

class ModifyPointsScreen extends StatelessWidget {
  ModifyPointsScreen({Key? key}) : super(key: key);
  final controller = Get.find<PointsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => controller.incrementarPuntosIsauro(1),
            child: const Text("+1 punto Isauro"),
          ),
          ElevatedButton(
            onPressed: () => controller.incrementarFaltasIsauro(1),
            child: const Text("+1 falta Isauro"),
          ),
          ElevatedButton(
            onPressed: () => controller.incrementarPuntosHumberto(1),
            child: const Text("+1 punto Humberto"),
          ),
          ElevatedButton(
            onPressed: () => controller.incrementarFaltasHumberto(1),
            child: const Text("+1 falta Humberto"),
          ),
        ],
      ),
    );
  }
}
