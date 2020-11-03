import 'package:flutter/material.dart';

class BinToDec extends StatefulWidget {
  @override
  _BinToDecState createState() => _BinToDecState();
}

class _BinToDecState extends State<BinToDec> {
  String _binary = "0";
  String _decimal = "0";

  void _onAddDigit(String digit) {
    setState(() {
      _binary = _binary == "0" ? digit : _binary + digit;
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
    return Expanded(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                Widget>[
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
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
              Widget>[
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("1", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("1");
                        }))),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      color: Colors.lime,
                      child: Text("0", style: new TextStyle(fontSize: 20.0)),
                      onPressed: () {
                        _onAddDigit("0");
                      },
                    ))),
          ])),
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
              color: Colors.lime,
              onPressed: () {
                _onReset();
              },
              child: Text("Reset", style: new TextStyle(fontSize: 20.0))),
        ),
      ),
    ]));
  }
}
