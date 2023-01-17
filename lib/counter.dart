
// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void _decrementCounter(){
    setState((){
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Hi',
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
                  direction: Axis.vertical,
                  children: <Widget>[
                        Container( 
                          margin: const EdgeInsets.all(10),
                          child: FloatingActionButton(
                            onPressed: _incrementCounter,
                            tooltip: 'Increment',
                            child: const Icon(Icons.add),
                          )
                        ),
                        Container( 
                          margin: const EdgeInsets.all(10),
                          child: FloatingActionButton(
                            onPressed: _decrementCounter,
                            tooltip: 'Decrement',
                            child: const Icon(Icons.remove),
                          )
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: FloatingActionButton(
                            onPressed:(){ 
                              _incrementCounter();
                              _incrementCounter();
                             },
                            tooltip: 'Increment Twice',
                            child: const Text('+ x2'),
                          )
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: FloatingActionButton(
                            onPressed:(){ 
                              _decrementCounter();
                              _decrementCounter();
                             },
                            tooltip: 'Decrement Twice',
                            child: const Text('- x2'),
                          )
                        ),
                ],
            ),
    );
  }
}
