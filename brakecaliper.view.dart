import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/control.view.dart';

class BrakeCaliper extends StatelessWidget {
  const BrakeCaliper({Key? key}) : super(key: key);
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
            'Cleaning and Maintenance Tips for Brake Caliper',
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
              "The brakes are the most important part on your motorcycle it doesn’t matter how fast you can go if you can’t stop. Maintaining your bike’s brake calipers is vital to having them work safely and at their best, so our simple guide will show you how to look after them, and how to rebuild when the time comes.",
              style:
                  TextStyle(fontSize: 17, color: Color.fromARGB(255, 7, 7, 7)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/caliper.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/calipers.png',
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
                      "Keeping your calipers clean is important, but you should also regularly clean and grease the pistons. To do this, DO NOT push the pads back into the caliper – just unbolt it and slide it off the disc. \n\n You can then remove the pads and get to the pistons to clean them. Check that the pads are in good condition, with plenty of life left in them. Apply some red rubber grease around the pistons after cleaning Using brake cleaner, clean all of the exposed piston and up to the seal, then apply a smear of red rubber grease to the same area. \n\nDon’t slather it on as you don’t want it getting on the pad face. Make sure that the pads go back in the same position as they came out, otherwise they’ll have to bed to the disc again. Then pop any spring and the retaining pin / clip back in (after cleaning them too).",
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
