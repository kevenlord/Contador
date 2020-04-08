import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Frodos",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
int _frodos = 0;
String _informativo = "É retardado!";

  void _changeFrodo(int delta){
    setState(() {
      _frodos += delta;
      if(_frodos < 0)
      {
        _informativo = "Retardado KRL!";
      }
      else if(_frodos <= 9)
      {
        _informativo = "Retardo d+!";
      }
      else{
        _informativo = "Alessandro";
      }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Image.asset(
            "images/frodo.png",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Frodos: $_frodos",
                style:
                    
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                        onPressed: () {_changeFrodo(-1);
                        },
                        child: Text(
                          "-1",
                          style: TextStyle(fontSize: 50.0, color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                        onPressed: () {_changeFrodo(1);},
                        child: Text(
                          "+1",
                          style: TextStyle(fontSize: 50.0, color: Colors.white),
                        )),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  _informativo,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0),
                ),
              )
            ],
          )
        ],
      );
  }
}