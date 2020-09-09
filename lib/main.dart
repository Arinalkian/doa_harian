import 'package:flutter/material.dart';
import 'doa2.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: Text('Doa Harian'),
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: Doa.length,
          itemBuilder: (BuildContext context, int index) {
            final namaDoa = Doa[index].toString();
            final Arabnya = Arab[index].toString();
            final Artinya = Arti[index].toString();
            return Container(
              height: 123,
              padding: EdgeInsets.all(7.0),
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: backgroundImage(),
                    ),
                    Container(
                      child: topcontent(namaDoa, Arabnya, Artinya),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
