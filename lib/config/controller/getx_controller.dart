import 'package:get/get.dart';

class PointsController extends GetxController {
  var puntosIsauro = 10.obs;
  var faltasIsauro = 0.obs;
  var puntosHumberto = 0.obs;
  var faltasHumberto = 0.obs;

  void incrementarPuntosIsauro(int incremento) {
    puntosIsauro.value += incremento;
  }

  void incrementarFaltasIsauro(int incremento) {
    faltasIsauro.value += incremento;
  }

  void incrementarPuntosHumberto(int incremento) {
    puntosHumberto.value += incremento;
  }

  void incrementarFaltasHumberto(int incremento) {
    faltasHumberto.value += incremento;
  }
}
