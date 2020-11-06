import 'package:flutter/material.dart';

class Luas extends StatefulWidget {
  @override
  _LuasState createState() => _LuasState();
}

class _LuasState extends State<Luas> {
  final alas = TextEditingController();
  final tinggi = TextEditingController();
  double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Segitiga"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text("Masukkan Nilai Alas dan Tinggi pada Field Dibawah:"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Column(
              children: <Widget>[
                TextField(
                    controller: alas,
                    keyboardType: TextInputType.numberWithOptions(),
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Masukkan Nilai Alas",
                      labelText: "Alas",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    )),
                TextField(
                    controller: tinggi,
                    keyboardType: TextInputType.numberWithOptions(),
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Masukkan Nilai Tinggi",
                      labelText: "Tinggi",
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
    final firstNumber = double.parse(alas.value.text);
    final secondNumber = double.parse(tinggi.value.text);
    switch (operation) {
      case 'Hasil':
        setState(() {
          result = 0.5 * firstNumber * secondNumber;
        });
        break;
    }
  }
}
