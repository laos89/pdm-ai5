import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'calculadora.dart';
import 'contador.dart';
import 'botones.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI5 integradora"),
        centerTitle: true,
      ),
      body: Center(
        child: _userScreen.elementAt(_indice),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.touch_app_rounded,
                color: Colors.blueAccent,
              ),
              label: "Botones"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.numbers_rounded,
                color: Colors.blueAccent,
              ),
              label: "Contador"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: Colors.blueAccent,
              ),
              label: "calculadora"),
        ],
        currentIndex: _indice,
        onTap: _onItemTapped,
      ),
    );
  }

  //lista de widget
  List<Widget> _userScreen = <Widget>[
    HomePage1(),
    HomePage2(),
    HomePage3(),
  ];
  //indice
_onItemTapped(int _index){
  setState((){
    _indice=_index;
  });
}
}
