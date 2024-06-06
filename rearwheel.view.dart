import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:motorcycleapp/view/wheels.view.dart';

class RearWheel extends StatelessWidget {
  const RearWheel({Key? key}) : super(key: key);
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
                    MaterialPageRoute(builder: (context) => const Wheels()));
              },
              icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            'How to Safely Remove a Rear Wheel',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              'Shifting to the smallest cog will help the wheel slide out more easily. If your derailleur has a clutch that increases tension on the chain, turn it off. Next, loosen the lever on the axle and spin it counterclockwise until all the threads are completely loose. Support the wheel and pull the axle out.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 2, 2, 2)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/rear.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/rear2.png',
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
                      "1. Shift onto the small cog and small chainring. Shifting the chain down onto the smallest cog on the rear wheel and the smallest chainring on the crankset, creates slack in the chain, which makes rear wheel removal much easier. \n\n2. Open the brake Note: If you're fixing a flat tire, you needn't worry about this step because when the air is all out of the tire it will fit through the brake easily.  \n\n3. Pull the derailleur back and remove the wheel Now you're ready to remove the wheel. Most bicycle wheels have quick releases holding them in the frame When the quick release is open, the wheel is ready to come out. To remove it, lift the bike by the seat so that gravity will help you. On some bikes the wheel will drop right out at this point (don't let it roll down the road and escape!). Or, if it doesn't fall out on its own, give it a slight blow with your hand and that might knock it right out.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color.fromARGB(255, 0, 0, 0)))),
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
