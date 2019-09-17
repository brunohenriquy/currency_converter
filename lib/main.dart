import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json&key=f2b660e8";

void main() async {
  http.Response response = await http.get(request);
  print(json.decode(response.body)['results']['currencies']['USD']);

  runApp(MaterialApp(title: "A Currency Converter", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
