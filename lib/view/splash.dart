import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/view/login.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2000), () async {
      Get.offAll(() => const Login(),
        transition: Transition.rightToLeftWithFade,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body:
      SafeArea(
        child: Center(
            child: Text("Sample App",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold))),
      ),
      // ),
    );
  }
}
