import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputDiskon extends StatelessWidget {
  const InputDiskon({
    Key key,
    @required this.diskon,
  }) : super(key: key);

  final TextEditingController diskon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "Masukkan Diskon"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: diskon,
      keyboardType: TextInputType.number,
    );
  }
}
