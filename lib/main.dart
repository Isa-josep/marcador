import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'presentation/screens.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Asegura que el enlace de widgets esté inicializado
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewPoints(),
    );
  }
}
