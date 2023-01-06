import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Responsive App',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
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
    return SafeArea(
      top: true,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25,25,30,10),
                child: Container(
                  color: const Color.fromRGBO(209, 133, 133, 1),
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,0,10),
                            child: Container(
                              color: const Color.fromRGBO(196, 196, 196, 1),
                              height: 25,
                              width: 150,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,25,10),
                        child: Container(
                          color: const Color.fromRGBO(168, 216, 173, 1),
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25,25,50,10),
                    child: Container(
                      color: const Color.fromRGBO(209, 133, 133, 1),
                      height: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,170,10),
                            child: Container(
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,10,10),
                            child: Container(
                              color: const Color.fromRGBO(168, 216, 173, 1),
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,10,20,0),
                        child: Container(
                          color: const Color.fromRGBO(196, 196, 196, 1),
                          height: 25,
                          width : 150,
                        ),
                      ),
                    ],
                  ),

                ],
          ),
      ],
        )
    ),
    );
  }
}
