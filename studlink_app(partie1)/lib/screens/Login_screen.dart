import 'package:flutter/material.dart';
import 'package:studlink_app/screens/acceuil_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<void> _navigateToHome() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 20, 102, 169),
              Color.fromARGB(255, 67, 119, 161),
              Color.fromARGB(255, 117, 177, 227),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 80, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Confirm your Person",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email or  number",
                                      hintStyle: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(height: 40),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, top: 20),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              fixedSize: MaterialStateProperty.all(
                                  const Size(400, 50)),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 0, 140, 255),
                              ),
                            ),
                            onPressed: () {
                              Future.delayed(const Duration(milliseconds: 2000),
                                  _navigateToHome);
                            },
                            child: const Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Or",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  fixedSize: MaterialStateProperty.all(
                                      const Size(400, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 0, 76, 255),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Facebook",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  fixedSize: MaterialStateProperty.all(
                                      const Size(400, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Google",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 252, 252, 252),
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
