import 'package:demo_app/widgets/bintodec.dart';
import 'package:demo_app/widgets/dectobin.dart';
import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  bool _switch = true;
  void onSwitch() {
    setState(() {
      _switch = !_switch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                  onPressed: onSwitch,
                  child: Text(
                      _switch ? "Decimal → Binario" : "Binario → Decimal",
                      style: TextStyle(fontSize: 20))),
            ),
            _switch ? DecToBin() : BinToDec()
          ]),
    );
  }
}
