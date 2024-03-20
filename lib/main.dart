import 'package:flutter/material.dart';
import 'package:lozano0373/pantallas0373/panel0373/panel_pantalla0373.dart';

void main() => runApp(MiAppPemex0373());

class MiAppPemex0373 extends StatelessWidget {
  const MiAppPemex0373({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PEMEX Lozano0373",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: PanelPantalla0373(),
    );
  }
}
