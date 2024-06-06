import 'package:flutter/material.dart';

// This widget is the root of your application.

class Loaf extends StatefulWidget {
  const Loaf({Key? key}) : super(key: key);

  @override
  State<Loaf> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Loaf> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZi-TVTXidH94IUp-nshgKmfyMgjgTXt9xvw&usqp=CAU',
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(width: 10.00),
                    const Text(
                      "Leafboard",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.00),
              const Text(
                "Work without limits",
                style: TextStyle(fontSize: 19),
              ),
              const SizedBox(height: 10.00),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.00),
                  Text(
                    "Your email address",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.00),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.00),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.00),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.00),
                  Text(
                    "Choose a password",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.00),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.00),
                child: TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: _togglePasswordVisibility,
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 0, 13),
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.00),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60.00,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Continue'),
                        Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color.fromARGB(255, 2, 241, 34),
                      shape: const StadiumBorder(),
                      textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.00),
              const Text(
                "or",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.00),
              Padding(
                padding: const EdgeInsets.all(
                  16.0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 60.00,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2.0, color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 25),
                        Image.network(
                          'https://tse3.mm.bing.net/th?id=OIP.Kg2FF2wpIK_HLyo8Q56ycAHaFj&pid=Api&P=0&h=180',
                          height: 50.00,
                          width: 50.00,
                        ),
                        const Text(
                          'Sign up with Google',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 16.00, right: 16.00, bottom: 10.00),
                child: SizedBox(
                  width: double.infinity,
                  height: 60.00,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2.0, color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 35),
                        Image.network(
                          'https://tse2.mm.bing.net/th?id=OIP.pT7CoqQN38VTsDu1hZ4DtQHaJl&pid=Api&P=0&h=180',
                          height: 30.00,
                          width: 30.00,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'Sign up with Apple',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
