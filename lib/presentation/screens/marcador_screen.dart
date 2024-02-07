import 'package:flutter/material.dart';

class ViewPoints extends StatelessWidget {
  const ViewPoints({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //*Puntos de competidor azul
            ViewsPoints(
              color: Color.fromARGB(255, 23, 34, 246),
              name: Text("blue"),
              ),           
            //*Puntos de competidor rojo
            ViewsPoints(
              color: Color.fromARGB(255, 246, 34, 23),
              name: Text("red"),
            )
          ],
        ),
      ),
    );
  }
}

class ViewsPoints extends StatelessWidget {
  final Color color;
  final Text? name;
  const ViewsPoints({
    super.key, 
    required this.color, 
    this.name
  });
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      height: size.height,
      color: color,
      child:  Center(
        child: Text(name!.data!,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}