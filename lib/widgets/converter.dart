import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binary = "11";
  String _decimal =
      "3"; // _decimal = int.parse(_binary, radix: 2).toRadixString(10);

  void _onAddDigit(int digit) {
    setState(() {
      if (_binary == "0")
        _binary = digit.toString();
      else
        _binary = _binary + digit.toString();
      _decimal = int.parse(_binary, radix: 2).toRadixString(10);
    });
  }

  void _onReset() {
    setState(() {
      _binary = "0";
      _decimal = "0";
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
                padding: const EdgeInsets.all(8.0),
                child:
                    Text("Binario → Decimal", style: TextStyle(fontSize: 20))),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lime[700],
                      fontSize: 35),
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_decimal',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lime[700],
                      fontSize: 35),
                )),
            Expanded(
                flex: 3,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: MaterialButton(
                                  elevation: 0.0,
                                  color: Colors.lime,
                                  child: Text("1",
                                      style: new TextStyle(fontSize: 20.0)),
                                  onPressed: () {
                                    _onAddDigit(1);
                                  }))),
                      Expanded(
                          child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: MaterialButton(
                                elevation: 0.0,
                                color: Colors.lime,
                                child: Text("0",
                                    style: new TextStyle(fontSize: 20.0)),
                                onPressed: () {
                                  _onAddDigit(0);
                                },
                              ))),
                    ])),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    elevation: 0.0,
                    color: Colors.lime,
                    onPressed: () {
                      _onReset();
                    },
                    child: Text("Reset", style: new TextStyle(fontSize: 20.0))),
              ),
            ),
          ]),
    );
  }
}
