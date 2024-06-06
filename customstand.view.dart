import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:motorcycleapp/view/wheels.view.dart';

class CustomStand extends StatelessWidget {
  const CustomStand({Key? key}) : super(key: key);
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
            'How to make Custom Motorcycle Stand',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: ListView(
        children: <Widget>[
          const SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.justify,
              'A motorcycle stand helps to lift and hold the motorcycles back wheel off the ground. This allows the motorcycle to stand upright without using the kickstand. In addition, the stand can prove to be handy when you need to work on certain parts of it, especially the rear parts such as wheel, chain or brakes. ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 2, 2, 2)),
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
                      "Step 1. Adjust Measurements You might need to adjust the measurements used below, per your requirements and the dimensions of your bike. \n\nStep 2. Mark the Middle Section Take 4 foot long 1-inch wide steel pipe and mark two points on it 4-inch from the center on the either side to get an 8-inch section in middle. \n\nStep 3. Bend the Pipe Bend the pipe at the marked points into a U-shape. The middle 8-inch section forms the bottom curve of “U”. Use the metal benders for this purpose. \n\nStep 4. Mark Points Mark two more points on the vertical sides of pipe 24 inches from corners of “U” shape. \n\nStep 5. Bend the Arms Bend the pipe upwards and backwards towards corners of U shape at both ends. These become the arms of the stand and when the stand will be laid on ground, these will extend vertically. \n\nStep 6. Slide the Stand Slide the stand under bike. Make sure that both the arms fit under rear fork and are also close enough to intersect. \n\nStep 7. Cut-off Excess Pipe Both the arms should be around 4 inches higher than the bottom of the rear forks so as to lift the bike enough off ground. Cut off the excess pipe from ends of these arms. \n\nStep 8. Cut Metal Sheet Use a regular metal saw to cut two pieces from 1/4 inch metal sheet. The pieces should be 2-inch by 4-inch. \n\nStep 9. Make Handle Arc the end of extra section to fit it around the pipe frame. Weld it to “U” to make it the stand’s handle. \n\nStep 10. Test the Stand Grasp the handle, tilt stand forward, slide it under bike, and then push bike’s handle to prop it up till it is on stand to check if all the dimensions are correct. ",
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
