import 'package:flutter/material.dart';
import 'package:motorcycleapp/view/control.view.dart';
import 'package:motorcycleapp/view/electrical.view.dart';
import 'package:motorcycleapp/view/engine.view.dart';
import 'package:motorcycleapp/view/profile.view.dart';
import 'package:motorcycleapp/view/wheels.view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      appBar: AppBar(
        title: Text(
          'MOTORCYCLE REPAIR GUIDE',
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()));
          },
          icon: const Icon(
            Icons.account_circle,
            size: 40,
            color: Color.fromARGB(255, 92, 93, 94),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(7.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      child: Image.asset('assets/picture.jpg',
                          width: 450, height: 120, fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 30.0),
            child: Row(
              children: <Widget>[],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 220.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 154, 154, 156),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 200.0,
                        child: ListView(children: [
                          SizedBox(
                            width: 20,
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ControlPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              backgroundColor:
                                  Color.fromARGB(255, 104, 104, 105),
                              padding: const EdgeInsets.symmetric(vertical: 40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Adding an image before the text
                                Image.asset(
                                  'assets/control.png', // Replace 'your_image.png' with your image asset path
                                  height: 40, // Adjust the height as needed
                                  width: 50, // Adjust the width as needed
                                ),
                                SizedBox(
                                    width:
                                        10), // Add some spacing between the image and text
                                Text(
                                  'Control & Brakes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 248, 248, 248),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Electrical(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              backgroundColor:
                                  Color.fromARGB(255, 104, 104, 105),
                              padding: const EdgeInsets.symmetric(vertical: 40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Adding an image before the text
                                Image.asset(
                                  'assets/electrical.png', // Replace 'your_image.png' with your image asset path
                                  height: 40, // Adjust the height as needed
                                  width: 50, // Adjust the width as needed
                                ),
                                SizedBox(
                                    width:
                                        5), // Add some spacing between the image and text
                                Text(
                                  'Electrical Tools',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 248, 248, 248),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Wheels(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              backgroundColor:
                                  Color.fromARGB(255, 104, 104, 105),
                              padding: const EdgeInsets.symmetric(vertical: 40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Adding an image before the text
                                Image.asset(
                                  'assets/drives.png', // Replace 'your_image.png' with your image asset path
                                  height: 40, // Adjust the height as needed
                                  width: 50, // Adjust the width as needed
                                ),
                                SizedBox(
                                    width:
                                        10), // Add some spacing between the image and text
                                Text(
                                  'Wheels & Drivers',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 248, 248, 248),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Engine(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              backgroundColor:
                                  Color.fromARGB(255, 104, 104, 105),
                              padding: const EdgeInsets.symmetric(vertical: 40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Adding an image before the text
                                Image.asset(
                                  'assets/engine.png', // Replace 'your_image.png' with your image asset path
                                  height: 40, // Adjust the height as needed
                                  width: 50, // Adjust the width as needed
                                ),
                                SizedBox(
                                    width:
                                        10), // Add some spacing between the image and text
                                Text(
                                  'Engine & Exhaust',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 248, 248, 248),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
