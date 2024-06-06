import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/engine.view.dart';

class CrankShaft extends StatelessWidget {
  const CrankShaft({Key? key}) : super(key: key);
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
            'How to Balance a Motorcycle Crankshaft',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              'A motorcycle crankshaft rarely needs to be balanced, as they come from the factory with good balance. If repairs or modifications have been made and the crankshaft has been disassembled for any reason then a crankshaft alignment and balance is necessary.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/crank.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/crank2.png',
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
                      "The motorcycle crankshaft needs aligned before any balancing is attempted. Alignment puts the crankshaft pieces centerlines straight and in line with no wobbles and the crankpin (that the rod goes on) parallel to the crankshaft. This is a trial and error then try again process until all centerlines are straight and parallel. \n\nOnce this is accomplished you may then proceed to balancing the crankshaft. Many people confuse crankshaft alignment with crankshaft balancing. They are two distinct operations requiring tools and skills for that operation. Alignment of the Crankshaft To align a crankshaft, a few tools are needed. \n\nSome you can make, but you really need a dial indicator to indicate the actual shaft runout in a miniscule amount such as 0.001” or 0.0254mm. Assemble the crankshaft by installing the crankpin between the two crankshaft pieces. This operation requires a press and some precise care when joining the pieces. \n\nBe sure the rod and rod bearing are installed on the crankpin before final assembly. The crankpin is held in place by interference fit with the crankpin being just slightly larger than the receiving holes in the crankshaft halves measured in thousandths of an inch (usually 1 or 2 thousandths). Use your eyes to check alignment of the counterweights. \n\nIf they are too close at the far end from crankpin they can be pried apart with an aluminum wedge between the counterweights and lightly tapped with a hammer. If they are too far apart, they can be squeezed closer together using a sturdy vise. The crankshaft should rotate freely around the rod with no binding, bumping, or noticeable wobble of the rod.",
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
