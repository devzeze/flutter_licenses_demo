import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Licenses Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Licenses Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _showLicenses() {

    showDialog(context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('licenses'),
        content: Text('Select the About with Licenses or just display Licenses'),
        actions: <Widget>[
          FlatButton(
            child: Text('About'),
            onPressed: ()=>showAboutDialog(context: context),
          ),
          FlatButton(
            child: Text('Licenses'),
            onPressed: ()=>showLicensePage(context: context),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Press button to display licenses',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showLicenses,
        tooltip: 'Show Licenses',
        child: Icon(Icons.description),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
