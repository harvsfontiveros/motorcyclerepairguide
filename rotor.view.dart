import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/control.view.dart';

class Rotor extends StatelessWidget {
  const Rotor({Key? key}) : super(key: key);
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
                        builder: (context) => const ControlPage()));
              },
              icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            'How to Resurface a Motorcycle Brake Rotor',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              'Its a process where we remove a small amount of the Brake Discs material using a Brake Lathe. This process will remove any corrosion and or Brake Pad deposits. It will also smooth out any surface irregularities that can cause vibrations. How do you know if you should have your Brake Rotors Resurfaced or Replaced',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 10, 10, 10)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/rotor4.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/rotor5.png',
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
                  padding: EdgeInsets.all(10),
                  child: Text(
                      textAlign: TextAlign.justify,
                      "Step 1: How the Brakes Are Supposed to Work The brake system has a ratcheting action. Every time you apply the brakes, the pistons press the brake pad against the rotor creating friction which slows the bike down and also results in loss of material on the brake pad itself.\n\nStep 2: The Easy Fix - If Luck Is on Your Side clean the pistons with brake cleaner while the caliper is on the bike. I recommend you try this first before you try the dis-assembly method which will be detailed next.\n\n Step 3: The Fix for When Luck Is Not on Your SideFirst remove the caliper from the bike. The caliper on my bike is easily removed \n\n Step 4: Un-sticking the Pistons Use clamps to secure all but one piston. I use a small plate on the one side to clamp two pistons together. \n\nStep 5: Reinstallation Reinstallation of the brake pads is straightforward. Slide the pads into place and use your finger tip to keep them separated.  ",
                      style: TextStyle(
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
