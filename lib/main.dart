import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Xlphone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void playSound(int a){
    final player = AudioPlayer();
    player.play(
      AssetSource('note$a.wav'),
    );
  }
  Expanded buildKey({required Color color,required int a, required String s}){
    return Expanded(
      child: FlatButton(

        color: color,
        onPressed: () {
          playSound(a);
        },
        child: Text(s,
          style: TextStyle(
            color: Colors.white,
          ),

        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    String s = "";
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color : Colors.red, a :1, s : "G"),
          buildKey(color : Colors.orange, a :2, s : "F"),
          buildKey(color : Colors.yellow, a :3, s : "E"),
          buildKey(color : Colors.greenAccent, a :4, s : "D"),
          buildKey(color : Colors.green, a :5, s : "C"),
          buildKey(color : Colors.blue, a :6, s : "B"),
          buildKey(color : Colors.purple, a :7, s : "A"),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
