import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/engine.view.dart';

class Muffler extends StatelessWidget {
  const Muffler({Key? key}) : super(key: key);
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
                    MaterialPageRoute(builder: (context) => const Engine()));
              },
              icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            'How to install a Motorcycle Muffler',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              'Common hand tools are all you need to perform a pipe change. A few common combination wrenches and a matching socket set (metric or functional sizes) will cover most of it. In some cases you may also need an Allen wrench or two. Along with the wrenches, you should also have some antiseize compound on hand.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 2, 2, 2)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/muffler.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/muffler2.png',
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
              child: const Row(
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
                      "Step 1: Read the instructions! \n\nStep 2: Loosen the connection joint Your motorcycle muffler will connect to your head pipes in one of a handful of ways. \n\nStep 3: Loosen the muffler bracket As with the connection joint, the muffler brackets will vary depending on the motorcycle you are working on. \n\nStep 4: Remove the muffler from the motorcycle They call them “slip-ons” for a reason. In theory, mufflers should behave in exactly that way. \n\nStep 5: Slide the new muffler over the exposed header pipe \n\nStep 6: Secure the new muffler Generally speaking, there are two ways to connect your muffler to your motorcycle: by brackets or by band-style clamps. \n\nStep 7: Wait! Wipe down the muffler With the new muffler installed and your motorcycle \n\nStep 8: Check for leaks Now you can finally flip the switch and dial up that wonderful symphony of motorcycle.",
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
