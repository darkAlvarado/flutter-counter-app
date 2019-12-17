import 'package:flutter/material.dart';


class HomePage extends  StatelessWidget{

  final style = new TextStyle(fontSize: 24);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'), 
        centerTitle: true,
        elevation: 12.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numúeros de clicks:', style: style,),
            Text('$contador', style: style,),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola mundo ');
        },
        child: Icon( Icons.add ),
      ),
    );
  }
}