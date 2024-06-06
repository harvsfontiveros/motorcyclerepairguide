import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: const Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/logos.png'),
            ),
            SizedBox(height: 10),
            Text(
              'KEISHA RENIEL P. FONTIVEROS',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'ABOUT US',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 14, 13, 13),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Its up to you how much you want to work on your bike, but some of the most elemental things like checking your oil, tire pressure, tire tread, and maintaining your chain are good to know to keep your motorcycle in top shape. Motorcycle maintenance can be expensive if you rely solely on dealership mechanics.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
