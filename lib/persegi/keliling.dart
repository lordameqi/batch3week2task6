import 'package:flutter/material.dart';

class Keliling extends StatefulWidget {
  @override
  _KelilingState createState() => _KelilingState();
}

class _KelilingState extends State<Keliling> {
  final sisi1 = TextEditingController();

  double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keliling Persegi"),
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
                      hintText: "Masukkan Nilai Sisi1",
                      labelText: "Sisi1",
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

    switch (operation) {
      case 'Hasil':
        setState(() {
          result = firstNumber * 4;
        });
        break;
    }
  }
}
