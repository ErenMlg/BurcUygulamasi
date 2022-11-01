import 'package:burc_rehberi/burcListesi.dart';
import 'package:burc_rehberi/routeGenerator.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      onGenerateRoute: MyRouteGenerator.routeGenerator,
    );
  }
}
