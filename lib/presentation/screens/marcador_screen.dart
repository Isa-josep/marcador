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
              color: Color.fromARGB(255, 6, 14, 162),
              name: Text("Isauro"),
              card: CardPoints(
                color: Color.fromARGB(255, 23, 34, 246),
              ),
            ), 

            //*Puntos de competidor rojo
            ViewsPoints(
              color: Color.fromARGB(255, 162, 14, 6),
              name: Text("El choncho"),
              card: CardPoints(
                color: Color.fromARGB(255, 246, 34, 23),
              ),
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

  const ViewsPoints({
    Key? key, 
    required this.color, 
    this.name,
    required this.card,
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
                fontSize: 50,
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
  const CardPoints({
    Key? key, 
    required this.color, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final textStile= Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(65),
          bottomLeft: Radius.circular(65),
          // bottomRight: Radius.circular(15),
          // topLeft: Radius.circular(15),
        )
      ),
      child:   Center(
        child: Text(
          "25", //TODO: Aqui debe de ir los puntos
          style: TextStyle(
            color: Colors.white, 
            fontSize: size.width * 0.2, 
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
