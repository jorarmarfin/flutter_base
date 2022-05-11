import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/models.dart';

class DrupalProvider extends ChangeNotifier {
  final String _baseUrl = 'https://emanuel.sahost.org';
  final List<Libro> libros = [];

  Future getLibros() async {
    var url = Uri.parse('$_baseUrl/api/biblioteca?_format=json');
    final response = await http.get(url);
    final json = jsonDecode(response.body)[0];
    final str = jsonEncode(json);
    // ignore: avoid_print
    print(str);
    final libros = Libro.fromJson(str);
    // ignore: avoid_print
    print(libros);
    // final decodeData = jsonDecode(response.body);
    // librosDrupal = LibrosModel.fromJson(decodeData).libros;
  }
}
