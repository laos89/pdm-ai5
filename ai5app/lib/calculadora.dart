import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage3> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  TextEditingController _textEditingController = new TextEditingController();
  TextEditingController _textEditingController1 =
      new TextEditingController(text: "");
  TextEditingController _textEditingController2 =
      new TextEditingController(text: "");

  double? _total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Realizado por:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
                Text("Artuo Marroquin Lira",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30)),
                TextField(
                  decoration: InputDecoration(hintText: "Inserte se mensaje"),
                  controller: _textEditingController,
                ),
                SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  child: Text("Press Me"),
                  color: Colors.redAccent,
                  onPressed: () {
                    setState(() {
                      _showSnackBar(context,
                          _textEditingController.text); //Llamar el snackbar
                      _textEditingController.text = "";
                    });
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Resultado: $_total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    TextField(
                      decoration: InputDecoration(hintText: "Primer Numero"),
                      controller: _textEditingController1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Segundo Numero"),
                      controller: _textEditingController2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      child: Text("Suma"),
                      color: Colors.redAccent,
                      onPressed: () {
                        setState(() {
                          _doAddition();
                        });
                      },
                    ),
                    MaterialButton(
                      child: Text("resta"),
                      color: Colors.redAccent,
                      onPressed: () {
                        setState(() {
                          _restar();
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      child: Text("multiplicación"),
                      color: Colors.redAccent,
                      onPressed: () {
                        setState(() {
                          _multiplicar();
                        });
                      },
                    ),
                    MaterialButton(
                      child: Text("división"),
                      color: Colors.redAccent,
                      onPressed: () {
                        setState(() {
                          _division();
                        });
                      },
                    ),
                    MaterialButton(
                      child: Text("porcentaje"),
                      color: Colors.redAccent,
                      onPressed: () {
                        setState(() {
                          _porcentaje();
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //Metodo propio para llamar a la snackbar
  _showSnackBar(BuildContext context, String mensaje) {
    final snackbar = SnackBar(
      content: new Text(mensaje.toUpperCase()),
    );
    _scaffoldkey.currentState?.showSnackBar(snackbar);
  }

  _doAddition() {
    setState(() {
      double? n1 = double.tryParse(_textEditingController1.text);

      double? n2 = double.tryParse(_textEditingController2.text);
      _total = (n1! + n2!)!;
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }

  _restar() {
    setState(() {
      double? n1 = double.tryParse(_textEditingController1.text);

      double? n2 = double.tryParse(_textEditingController2.text);
      _total = (n1! - n2!)!;
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }

  _multiplicar() {
    setState(() {
      double? n1 = double.tryParse(_textEditingController1.text);

      double? n2 = double.tryParse(_textEditingController2.text);
      _total = (n1! * n2!)!;
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }

  _division() {
    setState(() {
      double? n1 = double.tryParse(_textEditingController1.text);

      double? n2 = double.tryParse(_textEditingController2.text);
      _total = (n1! / n2!)!;
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }

  _porcentaje() {
    setState(() {
      double? n1 = double.tryParse(_textEditingController1.text);

      double? n2 = double.tryParse(_textEditingController2.text);
      _total = (n1! * (n2! / 100))!;
      _textEditingController1.text = "";
      _textEditingController2.text = "";
    });
  }
}
