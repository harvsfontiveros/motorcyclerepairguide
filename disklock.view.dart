import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/control.view.dart';

class DiskLock extends StatelessWidget {
  const DiskLock({Key? key}) : super(key: key);
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
            'Tips for Using Motorcycle Brake Disk Lock',
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
              'This advice applies to disk locks too always try to fit it to the rear wheel if you can, not the front. If you can, dont park in the same spot every day – changing your route will make you less of a target.',
              style:
                  TextStyle(fontSize: 17, color: Color.fromARGB(255, 7, 7, 7)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/disklock.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/disklocks.png',
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
                      "When using a pin-style disc lock, place the pin through a hole in the rotor. When using a shackle style disc lock, place the shackle towards the center of the disc brake. When locking a motorcycle with non-disc style brakes, like a drum brake, use a u-lock to capture the rotor. Use of a disc lock can help prevent roll away theft. When using a pin-style disc lock.\n\n place the pin through a hole in the rotor. When using a shackle style disc lock, place the shackle towards the center of the disc brake. When locking a motorcycle with non-disc style brakes, like a drum brake, use a ulock to capture the rotor. For maximum protection.\n\nKryptonite recommends using two locks: a disc lock, to prevent roll away theft, as well as a chain or ulock that is fixed to an immovable object to prevent lift away theft.  Make sure the chain or u-lock is capturing the frame of the motorcycle, as well as the immovable object. ",
                      style: TextStyle(
                          fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)))),
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
