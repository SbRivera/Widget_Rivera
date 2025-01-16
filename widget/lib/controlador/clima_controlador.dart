import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modelo/clima_modelo.dart';

class ClimaControlador {
  final String apikey = '2f3a167448ec9f2e68e0c419102aea4c';
  final String apiurl = 'https://api.openweathermap.org/data/2.5/weather';

  Future<ClimaModelo?> obtenerClima(String ciudad) async {
    final url = Uri.parse('$apiurl?q=$ciudad&units=metric&appid=$apikey&lang=es');
    try {
      final respuesta = await http.get(url);
      if (respuesta.statusCode == 200) {
        final json = jsonDecode(respuesta.body);
        return ClimaModelo.fromJson(json);
      } else {
        throw Exception('Error al obtener datos: ${respuesta.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
