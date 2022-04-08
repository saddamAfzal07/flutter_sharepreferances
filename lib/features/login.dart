import 'package:flutter/material.dart';
import 'package:flutter_sharepreferances/features/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LognScreen extends StatefulWidget {
  const LognScreen({Key? key}) : super(key: key);

  @override
  State<LognScreen> createState() => _LognScreenState();
}

class _LognScreenState extends State<LognScreen> {
  @override
  void initState() {
    // TODO: implement initState
  }

  // checkLogin() async {
  //   bool userLogin = await loginuser();
  //   Alreadylogin();

  //   if (userLogin == true) {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //   }else{
  //           Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => loginuser()));

  //   }
  // }

  // Alreadylogin() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setBool("alreadyLogin", true);
  // }

  // loginuser() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   bool alreadyLogin = preferences.getBool("alreadyLogin") ?? false;
  //   return alreadyLogin;
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Login Screen",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
