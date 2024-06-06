import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/customstand.view.dart';
import 'package:motorcycleapp/view/frontwheel.view.dart';
import 'package:motorcycleapp/view/home.view.dart';
import 'package:motorcycleapp/view/rearwheel.view.dart';
import 'package:motorcycleapp/view/stand.view.dart';

class Wheels extends StatelessWidget {
  const Wheels({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text('WHEELS & DRIVES',
            style: Theme.of(context).textTheme.headline4),
      ),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(7.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('assets/wheelsw.png',
                          width: 400, height: 120, fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[],
            ),
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[],
          )),
          Container(
            height: MediaQuery.of(context).size.height - 250.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 154, 154, 156),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 250.0,
                        child: ListView(children: [
                          SizedBox(
                            width: 200,
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FrontWheel()));
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                              ),
                              child: Text(
                                  'How to Remove a Motorcycle Front Wheel',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 27, 3, 243)))),
                          SizedBox(
                            width: 200,
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const RearWheel()));
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                            ),
                            child: Text('How to Safely Remove a Rear Wheel',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 27, 3, 243))),
                          ),
                          SizedBox(
                            width: 200,
                            height: 50,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Stand()));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20)),
                              child: Text(
                                  'How to use a Motorcycle Rear Wheel Stand',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 27, 3, 243)))),
                          SizedBox(
                            width: 200,
                            height: 50,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CustomStand()));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20)),
                              child: Text('How to make Custom Motorcycle Stand',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 27, 3, 243))))
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
