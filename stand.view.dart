import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:motorcycleapp/view/wheels.view.dart';

class Stand extends StatelessWidget {
  const Stand({Key? key}) : super(key: key);
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
            'How to use a Motorcycle Rear Wheel Stand',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              'The reasons are all the same: maintenance. To keep the bike upright when not in use, motorcycle stands take the place of the side stand. At a minimum, a rear stand is all thats needed to keep the bike from tipping over, but a front stand could also come in handy to raise the front tire off the ground.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 7, 7, 7)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/stand.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/stand2.png',
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
                      "1.Install the rear stand: The first step is to install the rear stand. It supports the bike through the use of a swingarm.  \n\n2.To secure the stand, hold the bike vertically, supporting it so it doesn’t fall over.  \n\n3.Once positioned properly, press the handle on the rear stand to lift up your bike.  \n\n4.To use a front stand, after securing the rear, lift your bike using the head or the underside of the forks. \n\n5.Be careful trying to move your bike when it’s on the stands. Instead, remove the stands, move your bike, and then resecure the stands. \n\n6.When you are finished working on your bike, lift up the handle from the ground and support your motorcycle as you remove the stand. It really is that simple. Dont try to complete work on your motorcycle using your kickstand. Not only is it potentially dangerous, it also is a real nuisance. Instead, take a few moments to use the stands. It will make performing your maintenance and repair work easier and safer.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color.fromARGB(255, 8, 8, 8)))),
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
