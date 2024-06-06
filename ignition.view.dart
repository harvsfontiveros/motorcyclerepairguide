import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:motorcycleapp/view/electrical.view.dart';

class Ignition extends StatelessWidget {
  const Ignition({Key? key}) : super(key: key);
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Electrical()));
              },
              icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            'How to Test a motorcycle Ignition Coil',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        primary: true,
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              "A motorcycle ignition coil is a vital ignition system component that converts the low-voltage electrical current from the battery into a high-voltage spark. It then delivers this spark to the spark plugs, igniting the air-fuel mixture in the engine cylinders and enabling combustion and power generation.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 10, 10, 10)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/ignition.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/ignitons.png',
              width: 150,
              height: 150,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 30.0),
            child: Row(
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
              child: Column(
            children: <Widget>[
              const SingleChildScrollView(
                  padding: EdgeInsets.all(15),
                  child: Text(
                      textAlign: TextAlign.justify,
                      "Testing a motorcycle ignition coil entails checking primary and secondary resistance, testing for open or short circuits, verifying spark strength, and visually inspecting the ignition coil and spark plug wires. Some tests require a spark plug wire tester, while the rest employ a digital multimeter.\n\n Safety First Locate the Ignition Coil Inspect the Ignition Coil Disconnect the Spark Plug Wires Measure and Read Primary Resistance Take Secondary Resistance Readings test for Open and Short Circuits Visually Inspect the Spark Plug Wires Reconnect the Spark Plug Wires\n\n Test the Ignition System Verify Spark at the Spark Plugs,Seek Professional Assistance By scrutinizing the battery and conducting related tests first, you ensure that your electrical system is in good condition and can provide sufficient power to the coil.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color.fromARGB(255, 7, 7, 7)))),
            ],
          )),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 78, 170, 245),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
          ),
        ],
      ),
    );
  }
}
