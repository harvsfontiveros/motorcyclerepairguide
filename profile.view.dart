import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motorcycleapp/view/about.view.dart';
import 'package:motorcycleapp/view/home.view.dart';
import 'package:motorcycleapp/view/login.view.dart';
import 'package:motorcycleapp/view/profilemenu.view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text('Profile', style: Theme.of(context).textTheme.headline4),
      ),
      backgroundColor: Color.fromARGB(255, 154, 154, 156),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20),

              /// -- IMAGE
              Image.asset(
                'assets/logos.png',
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),

              Stack(
                children: [
                  SizedBox(
                    height: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 100,
                    child: Container(
                      width: 35,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 221, 226, 230)),
                      child: const Icon(
                        LineAwesomeIcons.alternate_pencil,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),

              /// -- BUTTON

              const SizedBox(height: 5),

              Container(
                padding: EdgeInsets.all(30),
                child: const Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      hintText: 'harvs',
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      hintText: 'KeishaReniel@gmail.com',
                    ),
                  ),
                ]),
              ),

              const Divider(),

              const SizedBox(height: 10),

              /// -- MENU

              ProfileMenuWidget(
                  title: "About",
                  textColor: const Color.fromARGB(255, 8, 8, 8),
                  icon: Icons.announcement,
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutPage()));
                  }),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: const Color.fromARGB(255, 245, 18, 2),
                  endIcon: false,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()));
                    Get.defaultDialog(
                      title: "LOGOUT",
                      titleStyle: const TextStyle(fontSize: 20),
                      content: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text("Are you sure, you want to Logout?"),
                      ),
                      confirm: Expanded(
                        child: ElevatedButton(
                          onPressed: () => (),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              side: BorderSide.none),
                          child: const Text("Yes"),
                        ),
                      ),
                      cancel: OutlinedButton(
                          onPressed: () => Get.back(), child: const Text("No")),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
