import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/electrical.view.dart';

class Starter extends StatelessWidget {
  const Starter({Key? key}) : super(key: key);
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
            'Tips for Repairing a Motorcycle Starter Motor',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        primary: true,
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Text(
              textAlign: TextAlign.justify,
              'Usually, garages can rebuild or repair a starter with a bad armature, shorted field windings, bad brushes, a bad commutator, or even a bad solenoid. The cost of starter motor repair jobs can be found summarised in the table above according to car make and model, the price varies due to cost of the part.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 10, 10, 10)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/starter.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/starters.png',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[],
          ),
          Container(
              child: Column(
            children: <Widget>[
              const SingleChildScrollView(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      textAlign: TextAlign.justify,
                      "Step 1: What Is the Problem? The problem was a stuck brush There are two brushes that contact the commutator. One of the brush springs was rusted and was not pushing the brush down enough to make good contact. \n\nStep 2: Taking the End Cap Off the Starter Once the two screws are loose, the end cap can be pulled off the starter. \n\nStep 3: Remove Brushes Assembly To remove the starter brushes assembly from the end cap, remove the nut and washer from the screw that extends to the outside of the end cap.  \n\nStep 4: Brush Spring Removal Push up on the brush to expose a tab on the spring. Using plyers, pull the spring up and out. Be careful, the spring is under tension and could fly off.  \n\nStep 5: Remove Rust I used a wire brush to remove the rust from the spring. I put a light coating of grease on the spring to try and prevent future rusting. \n\nStep 6: Put the Spring Back On Put the center of the spring back on the post and then carefully tension the spring and put the end back on top of the brush. \n\nStep 7: Reinstall the Brushes Assembly Reinstall the brushes assembly into the end cap by sliding the screw thru the hole in the end cap. \n\nStep 8: Put the End Cap On Put the end cap back on to the starter. ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color.fromARGB(255, 12, 12, 12)))),
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
