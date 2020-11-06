import 'package:flutter/material.dart';
import 'segitiga/segitiga.dart';
import 'segitiga/keliling.dart';
import 'segitiga/luas.dart';
import 'persegipanjang/panjang.dart';
import 'persegipanjang/luas.dart';
import 'persegipanjang/keliling.dart';
import 'persegi/keliling.dart';
import 'persegi/luas.dart';
import 'persegi/persegi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Bangun Datar"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              splashColor: Colors.greenAccent,
              elevation: 8.0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Persegi Panjang"),
                ),
              ),
              // ),
              onPressed: () {
                print('Tapped');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Persegik()));
              },
            ),
            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              splashColor: Colors.greenAccent,
              elevation: 8.0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Persegi"),
                ),
              ),
              // ),
              onPressed: () {
                print('Tapped');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Panjang()));
              },
            ),
            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              splashColor: Colors.greenAccent,
              elevation: 8.0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Segitiga"),
                ),
              ),
              // ),
              onPressed: () {
                print('Tapped');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Segitiga()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
