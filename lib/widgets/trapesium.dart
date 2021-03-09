import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trapesium extends StatelessWidget {
  Trapesium({@required this.sa, @required this.sb, @required this.tt});

  final int sa;
  final int sb;
  final int tt;

  @override
  Widget build(BuildContext context) {
    double luas = ((sa + sb) * tt) * 0.5;
    return Scaffold(
      appBar: AppBar(
        title: new Text('LUAS TRAPESIUM'),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      backgroundColor: Colors.lightBlueAccent[200],
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'HASIL PERHITUNGAN',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Panjang Sisi Sejajar Atas: ${sa}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                              Container(
                                  child: Text(
                                "Panjang Sisi Sejajar Bawah: ${sb}",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                              Container(
                                child: Text(
                                  "Tinggi Trapesium: ${tt}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "HASIL",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.lightGreen[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      width: 3,
                                      color: Colors.red[800],
                                    )),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: new Text(
                                        luas.toStringAsFixed(1),
                                        style: TextStyle(
                                            fontSize: 50, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
