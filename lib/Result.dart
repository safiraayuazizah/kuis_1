import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double total,
  })  : _hargaTotal = total,
        super(key: key);

  final double _hargaTotal;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hasil", style: TextStyle(height: 1.5, fontSize: 15)),
              Text("$_hargaTotal", style: TextStyle(height: 2, fontSize: 25)),
            ],
          ),
        ],
      ),
    );
  }
}
