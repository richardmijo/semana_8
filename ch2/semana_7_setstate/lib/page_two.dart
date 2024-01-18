import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget{
  final Function(int) callback;
  int counter;

  PageTwo({required this.counter, required this.callback});

  @override
  _PageTwoState createState()=> _PageTwoState();
}

class _PageTwoState extends State<PageTwo>{

  void _incrementCounter(){
    setState(() {
      widget.counter ++;
    });
    widget.callback(widget.counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page two'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop(widget.counter);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Has presionado el boton muchas veces',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: Icon(Icons.add),
       ),
    );
  }

}