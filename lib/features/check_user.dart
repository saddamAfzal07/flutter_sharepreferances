import 'package:flutter/material.dart';
import 'package:flutter_sharepreferances/features/homescreen.dart';
import 'package:flutter_sharepreferances/features/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckUser extends StatefulWidget {
  const CheckUser({Key? key}) : super(key: key);

  @override
  State<CheckUser> createState() => _CheckUserState();
}

class _CheckUserState extends State<CheckUser> {
  @override
  void initState() {
    // TODO: implement initState
    checkLogin();
  }

  checkLogin() async {
    bool userLogin = await loginUser();
    storeInfo();

    if (userLogin == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LognScreen()));
    }
  }

  storeInfo() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("alreadyLogin", true);
  }

  loginUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool alreadyLogin = preferences.getBool("alreadyLogin") ?? false;
    return alreadyLogin;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      ),
    );
  }
}
