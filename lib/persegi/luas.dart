import 'package:flutter/material.dart';

class Luas extends StatefulWidget {
  @override
  _LuasState createState() => _LuasState();
}

class _LuasState extends State<Luas> {
  final sisi1 = TextEditingController();
  final sisi2 = TextEditingController();
  double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Persegi"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text("Masukkan Nilai sisi pada Field Dibawah:"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Column(
              children: <Widget>[
                TextField(
                    controller: sisi1,
                    keyboardType: TextInputType.numberWithOptions(),
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Masukkan Nilai Sisi",
                      labelText: "Sisi1",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    )),
                TextField(
                    controller: sisi2,
                    keyboardType: TextInputType.numberWithOptions(),
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Masukkan Nilai Sisi2",
                      labelText: "Sisi2",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    )),
                RaisedButton(
                  child: Text('Hasil'),
                  onPressed: () {
                    calculate('Hasil');
                  },
                ),
                Text('${result ?? ''}'),
              ],
            ),
          )
        ],
      ),
    );
  }

  void calculate(String operation) {
    final firstNumber = double.parse(sisi1.value.text);
    final secondNumber = double.parse(sisi2.value.text);
    switch (operation) {
      case 'Hasil':
        setState(() {
          result = firstNumber * secondNumber;
        });
        break;
    }
  }
}
