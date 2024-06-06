import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/electrical.view.dart';

class HeadLight extends StatelessWidget {
  const HeadLight({Key? key}) : super(key: key);
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
            'How to install a New Motorcycle Headlight',
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
              'Switch on the headlights and mount the motorcycle. The low beams upper cutoff point should rest right on the lower line. Because most bikes have combined high- and low-beam reflectors, setting the height (and checking to see that the beam is centered along the bikes long axis is about all there is to it.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 8, 8, 8)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/head.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/heads.png',
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
                      "Turn off the motorcycle and locate the headlight assembly. It is usually located at the front of the motorcycle and can be easily spotted. Remove the headlight assembly by unscrewing any bolts or clips that hold it in place. \n\nDepending on your motorcycle model, you may need to remove other parts to access the headlight assembly. Disconnect the wiring harness that connects the headlight to the motorcycle’s electrical system. Gently pull the wiring harness out of the headlight assembly. Depending on the type of electrical connection, this may involve releasing a safety tab or twist lock. \n\nRemove the old headlight bulb from the headlight assembly.  Install the new headlight bulb into the headlight assembly. Make sure it is secured and the wires are not pinched. Clean the connections if needed and reconnect the wiring harness to the new headlight bulb. Reinstall the headlight assembly by securing any bolts or clips that were removed earlier. \n\nDouble-check to make sure the assembly is properly secured. Turn on the motorcycle to test the new headlight bulb. If it doesn’t turn on, check the wiring harness to make sure it is connected properly. ",
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
