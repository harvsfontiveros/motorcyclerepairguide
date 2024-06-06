import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/headlight.view.dart';
import 'package:motorcycleapp/view/home.view.dart';
import 'package:motorcycleapp/view/ignition.view.dart';
import 'package:motorcycleapp/view/sparkplugs.view.dart';
import 'package:motorcycleapp/view/starter.view.dart';

class Electrical extends StatelessWidget {
  const Electrical({Key? key}) : super(key: key);
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
        title: Text('ELECTRICAL', style: Theme.of(context).textTheme.headline4),
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
                      child: Image.asset('assets/electricalw.png',
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
                                            const SparkPlugs()));
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                              ),
                              child: Text(
                                  'How to Replace Motorcycle Spark Plugs',
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
                                      builder: (context) => const Ignition()));
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                            ),
                            child: Text(
                                'How to Test a motorcycle Ignition Coil',
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
                                        builder: (context) =>
                                            const HeadLight()));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20)),
                              child: Text(
                                  'How to install a New Motorcycle Headlight',
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
                                        builder: (context) => const Starter()));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20)),
                              child: Text(
                                  'Tips for Repairing a Motorcycle Starter Motor',
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
