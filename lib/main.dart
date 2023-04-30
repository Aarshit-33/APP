
import 'package:flutter/material.dart';

import 'settings.dart';
import 'scan.dart';
import 'leads.dart';
import 'qr_gen.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AJ App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'AJ App Home Page'),
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
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AJ App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(


        //CREATE 4 BUTTONS 2 ROWS OF 2 BUTTONS
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Scan"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    fixedSize: Size(150, 100),
                    textStyle: TextStyle(fontSize: 25),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scan()),
                    );
                  },
                ),
                SizedBox(width: 40) , //add space between buttons
                ElevatedButton(
                  child: Text("Leads"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    fixedSize: Size(150, 100),
                    textStyle: TextStyle(fontSize: 25),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Leads()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 40) , //add space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Settings"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    fixedSize: Size(150, 100),
                    textStyle: TextStyle(fontSize: 25),
                    elevation: 0,
                  ),
                  onPressed: () {
                    AppBar(
                      title: const Text('Settings'),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){

                        return MaterialApp(
                          home: Scaffold(
                            body:  PanelSwitcher(),
                          ),
                        );
                      }),
                    );
                  },
                ),
                SizedBox(width: 40) , //add space between buttons
                ElevatedButton(
                  child: Text("Generate QR Code"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    fixedSize: Size(150, 100),
                    textStyle: TextStyle(fontSize: 25),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QR()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}