import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}


class MyApp2 extends StatelessWidget{
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '実践演習0620', home: const MyHome(),
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

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
      appBar: AppBar(title: const Text('デモアプリ')),
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
          Text("$count",style: const TextStyle(fontSize: 80),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ([9,8,7,6,5,4,3,2,1,0].map((i){
              return BinDigit(value: count, digit: i);
            })).toList()
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
  final int value;
  final int digit;
  const BinDigit({super.key, required this.value, required this.digit});


  @override
  Widget build(BuildContext context) {
    return Text((value & (1<< digit) != 0)?'1':'0',style: const TextStyle(fontSize: 30));
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
