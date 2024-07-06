
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const MyHomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(221, 5, 5, 5),
        // Set background color here
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});
  // const MyWidget({});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(179, 25, 22, 22),
          leading: const Icon(Icons.rocket_launch_outlined,color: Colors.red,size: 30),
          title: const Text('Planets', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 240, 237, 229),fontWeight: FontWeight.bold)),

          centerTitle: true,
          actions: [const Icon(Icons.search,color: Colors.red,size: 30),
            const SizedBox(width: 10,),
            const Icon(Icons.more_vert,color: Colors.red,size: 30),
            const SizedBox(width: 10,)],
        ),
        body:  Center(
          child:Container(
            width: 400,
            height: 600,
            child: Image.asset('Images/space4.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        )
    );
  }
}