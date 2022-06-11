import 'package:flutter/material.dart';
class HomePage2 extends StatefulWidget {
  @override
  _HomePageState2 createState() => _HomePageState2();
}

class _HomePageState2 extends State<HomePage2> {
  int _contador = 0;
  var dato;
  var dato1;

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
              Text("Marcos Perez Aguilar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30)),
              Container(
                child: Column(
                  children: [
                    Text(
                      "El contador vale:",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                IconButton(
                  icon: Icon(Icons.do_not_disturb_on),
                  color: Colors.redAccent,
                  onPressed: () {
                    setState(() {
                      if (_contador > 0) {
                        _contador--;
                        dato = 'ok';
                      } else {
                        _contador = 0;
                        dato = 'No puede pasar de 0';
                      }
                    });

                    print("Soy el boton restar");
                  },
                ),
                Text(
                  "$_contador",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      if (_contador < 50) {
                        _contador++;
                        dato = 'ok';
                      } else {
                        _contador = 50;
                        dato = 'El numero no puede pasar de 50';
                      }
                    });

                    print("Soy el botón sumar");
                  },
                ),
              ]),
              Column(
                children: [Text("$dato")],
              )
            ],
          ),
        ));
  }
}

