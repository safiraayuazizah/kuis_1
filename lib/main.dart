import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Input.dart';
import 'InputDiskon.dart';
import 'Convert.dart';
import 'Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController diskon = new TextEditingController();
  TextEditingController harga = new TextEditingController();

  double _harga = 0;
  double _diskon = 0;
  double _hargaTotal = 0;

  void _hitungDiskon() {
    setState(() {
      _harga = double.parse(harga.text);
      _diskon = double.parse(diskon.text);
      _hargaTotal = (_diskon / 100) * _harga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Perhitungan Diskon"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Text("Masukkan Harga"),
              Input(harga: harga),
              Text("Masukkan Diskon"),
              InputDiskon(diskon: diskon),
              Result(total: _hargaTotal),
              Convert(konvertHandler: _hitungDiskon),
            ],
          ),
        ),
      ),
    );
  }
}
