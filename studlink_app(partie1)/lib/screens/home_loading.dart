import 'package:flutter/material.dart';
import 'package:studlink_app/screens/Login_screen.dart';

class HomeLoading extends StatefulWidget {
  HomeLoading({super.key});

  @override
  State<HomeLoading> createState() => _HomeLoadingState();
}

class _HomeLoadingState extends State<HomeLoading> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), Redirection);
  }

  Future<void> Redirection() async {
    Navigator.push(
      context as BuildContext,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Expanded(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 0,
                    ),
                    Icon(
                      Icons.link,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "StudentLink",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 40, right: 115),
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
