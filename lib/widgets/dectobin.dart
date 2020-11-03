import 'package:flutter/material.dart';

class DecToBin extends StatefulWidget {
  @override
  _DecToBinState createState() => _DecToBinState();
}

class _DecToBinState extends State<DecToBin> {
  String _binary = "0";
  String _decimal = "0";

  void _onAddDigit(String digit) {
    setState(() {
      _decimal = _decimal == "0" ? digit : _decimal + digit;
      _binary = int.parse(_decimal).toRadixString(2);
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
            '$_decimal',
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
            '$_binary',
            textAlign: TextAlign.right,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.lime[700],
                fontSize: 35),
          )),
      Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
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
                        child: Text("2", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("2");
                        }))),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("3", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("3");
                        }))),
          ])),
      Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("4", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("4");
                        }))),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("5", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("5");
                        }))),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("6", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("6");
                        }))),
          ])),
      Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("7", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("7");
                        }))),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("8", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("8");
                        }))),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("9", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("9");
                        }))),
          ])),
      Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        child: Text("0", style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          _onAddDigit("0");
                        }))),
            Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.lime,
                        onPressed: () {
                          _onReset();
                        },
                        child: Text("Reset",
                            style: new TextStyle(fontSize: 20.0))))),
          ]))
    ]));
  }
}
