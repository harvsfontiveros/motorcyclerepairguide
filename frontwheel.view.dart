import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:motorcycleapp/view/wheels.view.dart';

class FrontWheel extends StatelessWidget {
  const FrontWheel({Key? key}) : super(key: key);
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
            'How to Remove a Motorcycle Front Wheel',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              'Removing a motorcycle front wheel is relatively easy and once you get the hang of it, it won’t take you more than a few minutes to remove and replace the your bikes front tires. To get started, grab some protective gloves and follow these steps.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 7, 7, 7)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/frontwheel.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/frontwheel2.png',
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
                      "1 Secure the Bike It is important to place the motorcycle in a safe position. Place the bike on its center stand. Make sure it is secure to prevent it from toppling or falling over. \n\n2.Top off Brake Fluid Align the handlebars so that the main cylinder is balanced and level. It is advisable to use a suitable material to cover the outer surface of the bike.  \n\n3. PumpPump brake handle until the piston moves. Watch out that the reservoir is filled up at all times. Add more brake fluid if necessary. \n\n4. Bleed Brakes Put the caliper and pistons back in place. Use brake fluid for lubrication. Take one end of a hose and place it on the Place the other end in a bucket. \n\n5. Clean Up Use water to clean up any traces of brake fluid on the bike and the work area.",
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
