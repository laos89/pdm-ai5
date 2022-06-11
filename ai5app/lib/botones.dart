import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePageState1();
}

class _HomePageState1 extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Realizado por:",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20)),
            Text("Angelina Leines Hernandez",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30)),
            Text("Soy el primer componente hijo"),
            Text("Soy el segundo componente hijo"),
            Text("Soy el tercer componente hijo"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("Botón 1"),
                  color: Colors.amberAccent,
                  onPressed: () {
                    print("Soy B1");
                  },
                ),
                MaterialButton(
                  child: Text("Botón 2"),
                  color: Colors.redAccent,
                  onPressed: () {
                    print("Soy B2");
                  },
                ),
                MaterialButton(
                  child: Text("Botón 3"),
                  color: Colors.greenAccent,
                  onPressed: () {
                    print("Soy B3");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
