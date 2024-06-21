import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}


class MyApp2 extends StatelessWidget{
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '実践演習0620', home: MyHome()
    );
  }
}

class MyHome extends StatefulWidget{
  const MyHome({super.key});
  @override
  _MyHomeState createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHome>{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('デモアプリ')),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{
          setState((){
            count = 0;
          })
        }, 
        child: const Icon(Icons.cancel)
      ),
      
      body: Column(
        children: [
          Text("$count",style: TextStyle(fontSize: 80),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BinDigit(),
              BinDigit(),
              BinDigit(),
              BinDigit(),
              BinDigit(),
              BinDigit(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(
              onPressed: () {

                setState((){count++;});    //setStateでcountの更新を適用する
              
              }, child: const Icon(Icons.plus_one)
              ),
            ElevatedButton(
              onPressed: () {

                setState(() {count--;});

              }, child: const Icon(Icons.exposure_minus_1)
              ),

            ],)],));
  }
}

class BinDigit extends StatelessWidget{
  const BinDigit({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("0");
  }
  
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo Counter Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
