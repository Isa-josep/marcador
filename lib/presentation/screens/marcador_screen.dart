import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marcador/config/controller/getx_controller.dart';

class ViewPoints extends StatelessWidget {
  const ViewPoints({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PointsController());

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ViewsPoints(
              faltas: controller.faltasIsauro.value,  // Accede al valor aquí
              color: const Color.fromARGB(255, 6, 14, 162),
              name: const Text("Isauro"),
              card: Obx(() => CardPoints(
                color: const Color.fromARGB(255, 23, 34, 246),
                puntos: controller.puntosIsauro.value,
                faltas: controller.faltasIsauro.value,
              )),
            ),
            ViewsPoints(
              faltas: controller.faltasHumberto.value,  // Accede al valor aquí
              color: const Color.fromARGB(255, 162, 14, 6),
              name: const Text("Humberto"),
              card: Obx(() => CardPoints(
                color: const Color.fromARGB(255, 246, 34, 23),
                puntos: controller.puntosHumberto.value,
                faltas: controller.faltasHumberto.value,
              )),
            ),
          ],
        ),
      ),
    );
  }
}


class ViewsPoints extends StatelessWidget {
  final Color color;
  final Text? name;
  final Widget? card; 
  final int faltas;
  const ViewsPoints({
    Key? key, 
    required this.color, 
    this.name,
    required this.card, 
    required this.faltas, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2, 
      height: size.height,
      color: color,
      clipBehavior: Clip.none,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: size.height * 0.1,
            child: name != null ? Text(
              name!.data!,
              style:  const TextStyle(
                fontSize: 50, //*Usage 30 en dispositivos moviles
                fontWeight: FontWeight.bold, 
                color: Colors.white,
              ),
            ) : const SizedBox(), // Usar SizedBox si name es null para evitar errores
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: FractionallySizedBox(
                widthFactor: 0.6, // Ajusta según el tamaño deseado
                heightFactor: 0.6, // Ajusta según el tamaño deseado
                child: card,  
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class CardPoints extends StatelessWidget {
  final Color color;
  final int puntos;
  final int faltas;
  
  const CardPoints({
    Key? key, 
    required this.color, 
    required this.puntos, 
    required this.faltas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(65),
          bottomLeft: Radius.circular(65),
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$puntos',
              style: TextStyle(
                color: Colors.white, 
                fontSize: size.width * 0.2, 
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Faltas: $faltas',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.1,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}

