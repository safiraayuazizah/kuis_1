import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    @required this.harga,
  }) : super(key: key);

  final TextEditingController harga;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "Masukkan Harga"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: harga,
      keyboardType: TextInputType.number,
    );
  }
}
