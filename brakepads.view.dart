import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/control.view.dart';

class BrakePads extends StatelessWidget {
  const BrakePads({Key? key}) : super(key: key);
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
            textAlign: TextAlign.justify,
            'How to Replace Motorcycle Brake Pads',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              'One of the most important benefits is that it can help keep you safe on the road. When your brakes are working properly, you ll be able to stop your car quickly and safely in an emergency situation. Another benefit of changing your brakes is that it can help extend the life of your cars brake system.',
              style:
                  TextStyle(fontSize: 17, color: Color.fromARGB(255, 8, 8, 8)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/brake1.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/brake2.png',
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
                      "Go easy on your brakes for the next 350 miles. New brake pads need an adjustment period to work properly. For the next 250–350 miles, ride at slower speeds and allow plenty of extra stopping distance. This allows you to apply the brakes gradually, preventing brake failure or damage to the pads or rotor.\n\n"
                      "1.Remove any retention hardware from your brake calipers.\n"
                      "2.Why put new brake pads in dirty, dusty calipers.\n "
                      "3.Press your pistons back into the caliper body.\n"
                      "4.Give your new pads a fresh surface.\n "
                      "5.Time to install the new pads.Bed your pads to mate them with the disc.\n",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 10, 10, 10)))),
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
