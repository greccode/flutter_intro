import "package:flutter/material.dart";

// Der Einstiegspunkt für die Flutter-App
void main() {
  runApp(MyApp());
}

// Ein StatelessWidget, das die Struktur unserer App definiert
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo", // Der Titel der App
      theme: ThemeData(
        primarySwatch: Colors.deepPurple // Standardfarbe für die App
      ),
      home: MyHomePage(), // Startseite der App
    );
  }
}

// Die Hauptseite der App, die StatefulWidget verwendet
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Funktion, die beim Klick auf den Button aufgerufen wird
  void _incrementCounter() {
    setState(() {
      _counter++; // Erhöht den Zähler um 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basics'), // Titel in der AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // // Zentriert den Inhalt vertikal
          children: <Widget>[
            Text(
              "You have pushed the button this many times:",
            ),
            Text(
              "$_counter", // Zählerwert wird angezeigt
              style: Theme.of(context).textTheme.headlineMedium, //Textstil
            ),
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter, // Ruft _incrementCounter auf
          tooltip: "Increment",
          child: Icon(Icons.add), // Plus-Symbol auf dem Button
      ),
    );
  }
}