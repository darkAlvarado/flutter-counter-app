import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  } 
}


class _ContadorPageState extends State<ContadorPage> {

  final _style = new TextStyle(fontSize: 24);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'), 
        centerTitle: true,
        elevation: 12.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numúeros de clicks:', style: _style,),
            Text('$_contador', style: _style,),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset), 
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed:_sustraer,), 
        SizedBox(width: 8.0,),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar)
      ],
    );
  }

  void _agregar(){
    setState(() => _contador++);
  }

  void _sustraer(){
    setState(() => _contador--);
  }

  void _reset() {
    setState(() => _contador = 0);
  }

}