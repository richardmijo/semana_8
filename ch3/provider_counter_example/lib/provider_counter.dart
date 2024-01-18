import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class ProviderCounterExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Desde ProviderCounterExamplePage");
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            MyText(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read<Counter>().increment(),
            // Provider.of<Counter>(context, listen: false).increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("MyText");
    return Text('${context.watch<Counter>()._count}',
        // return Text('${Provider.of<Counter>(context)._count}',
        style: Theme.of(context).textTheme.headline4);
  }
}