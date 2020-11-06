import 'package:flutter/material.dart';
import 'luas.dart';
import 'keliling.dart';

class Panjang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Image.network(
              'https://3.bp.blogspot.com/-Gx5Ssh17txU/VmvCqsdTa-I/AAAAAAAACr8/0i69odugI1s/s1600/persegi_panjang.PNG'),
          Container(
            margin: EdgeInsets.only(left: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                    color: Colors.deepPurpleAccent,
                    splashColor: Colors.blueGrey,
                    elevation: 6.0,
                    child: Text(
                      "Luas",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {
                      //Function when the button is pressed
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Luas()));
                    }),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                    color: Colors.deepPurpleAccent,
                    splashColor: Colors.blueGrey,
                    elevation: 6.0,
                    child: Text(
                      "Keliling",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {
                      //Function when the button is pressed
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Keliling()));
                    }),
              ],
            ),
          )
        ],
      )),
    );
  }
}
