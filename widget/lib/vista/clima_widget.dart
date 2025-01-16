import 'package:flutter/material.dart';

class ClimaWidget extends StatelessWidget {
  final String ciudad;
  final double temperatura;
  final String descripcion;

  const ClimaWidget({
    required this.ciudad,
    required this.temperatura,
    required this.descripcion,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ciudad,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.sunny,
              size: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Text(
              '${temperatura.toStringAsFixed(1)}°C',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              descripcion,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
