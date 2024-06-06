import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/engine.view.dart';

class OilFilter extends StatelessWidget {
  const OilFilter({Key? key}) : super(key: key);
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
            'How to Remove a Motorcycle Oil Filter',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              'You can remove an oil filter either by hand, using a belt strap wrench, or improvise using a bandana. Other alternatives include using a hammer and screwdriver or using a pry bar. There are several reasons why you may need to remove an oil filter without a wrench. The most common reason is to avoid expenses.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 2, 2, 2)),
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/oil.png',
              width: 200,
              height: 150,
            ),
            Image.asset(
              'assets/oil2.png',
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
                      "1. Clean your work area Before you start, make sure the oil-change area is clean and free of dirt and other contaminants. \n\n2. Access the drain plug and oil filter Remove any parts that restrict access to the filler plug, drain plug and oil filter. \n\n3. Drain the oil Place the drain pan under the drain plug to catch the used oil. Identify the fill and drain plugs at the top and bottom of the engine case. \n\n4. Remove the oil filter While the old oil is draining, remove the old filter. You may be able to unscrew the filter by hand, makes it easy. \n\n5. Install a new oil filter Use your finger to spread some new oil on the filter gasket to lubricate and create a good seal. \n\n6.Reinstall the drain plug Replace the drain plug gasket with a new one if your drain plug has one. \n\n7. Add new motorcycle oil Refer to your owners manual to verify how much oil is required. \n\n8. Run the engine and check for leaks Double-check the oil level. Add or remove oil if necessary. \n\n9. Properly dispose of the used oil and filter It’s often easiest to return the used oil from your drain pan into your new oil containers after you’ve filled your bike.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color.fromARGB(255, 2, 2, 2)))),
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
