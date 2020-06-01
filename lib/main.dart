import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Stateful App Example',
      home: FavoriteCity()
    ),
  );
}

class FavoriteCity extends StatefulWidget {
  @override
  _FavoriteCityState createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App example'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'your city is $nameCity',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
