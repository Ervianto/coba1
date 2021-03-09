import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'widgets/trapesium.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  int atap = 0;
  int alas = 0;
  int tinggi = 0;

  var nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hitung Luas Trapesium'),
        centerTitle: true,
        backgroundColor: Colors.redAccent[700],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: new EdgeInsets.all(20.0),
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      atap = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      labelText: "Masukkan Sisi Sejajar Atas",
                      filled: true,
                      suffix: Text('cm'),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(padding: new EdgeInsets.only(top: 10.0)),
                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      alas = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      labelText: "Masukkan Sisi Sejajar Bawah",
                      filled: true,
                      suffix: Text('cm'),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(padding: new EdgeInsets.only(top: 10.0)),
                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      tinggi = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      labelText: "Masukkan Tinggi",
                      filled: true,
                      suffix: Text('cm'),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
              ],
            ),
          ),
          new Padding(padding: new EdgeInsets.only(top: 10.0)),
          Container(
            margin: EdgeInsets.only(left: 100, right: 100, top: 25),
            child: RaisedButton(
              onPressed: () {
                var Route = new MaterialPageRoute(
                  builder: (BuildContext) =>
                      new Trapesium(sa: atap, sb: alas, tt: tinggi),
                );

                Navigator.of(context).push(Route);
              },
              padding: EdgeInsets.all(10.0),
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text(
                'Hitung Luas',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
    );
  }
}
