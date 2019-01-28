import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.cloud),
                SizedBox(width: 8.0),
                Text("Mi App Hola Mundo"),
              ],
            ),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        header(),
        list()
      ],
    );
  }

  Widget header() {
    return Stack(
      children: <Widget>[
        Container(
          height: 100.0,
          width: double.infinity,
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Estacion_tren_-_fernandez_oro_-_panoramio.jpg/501px-Estacion_tren_-_fernandez_oro_-_panoramio.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 100.0,
          width: double.infinity,
          color: Colors.black38,
        ),
        Positioned(
          left: 16.0,
          top: 16.0,
          child: Text(
            "Fernandez Oro",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          right: 8.0,
          bottom: 8.0,
          child: Text(
            "31°C",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget list() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          dayWidget("Lunes", Icons.wb_sunny, "32°C"),
          dayWidget("Martes", Icons.wb_cloudy, "32°C"),
          dayWidget("Miércoles", Icons.wb_iridescent, "32°C"),
          dayWidget("Jueves", Icons.wb_sunny, "32°C"),
          dayWidget("Viernes", Icons.wb_sunny, "32°C"),
          dayWidget("Lunes", Icons.wb_sunny, "32C°")
        ],
      ),
    );
  }

  Widget dayWidget(String day, IconData iconData, String temp) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(day),
            ),
            Expanded(
              child: Icon(iconData),
            ),
            Expanded(
              child: Text(
                temp,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
