import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/utils/marquee.dart';
import 'package:sample/view/aboutus.dart';
import 'package:sample/view/profile.dart';
import 'package:sample/view/settings.dart';
import 'package:sample/view/splash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  var cTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (cTime == null || now.difference(cTime) > const Duration(seconds: 2)) {
      cTime = now;
      Get.snackbar("Exit application", "Back again to exit from th app");
      return Future.value(false);
    }

    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _key,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu_rounded),
                      onPressed: () {
                        _key.currentState!.openDrawer();
                      },
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(),

                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle
                      , color: Colors.black
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Text("M", style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),),
                ),
                const Text("Mohammed E U", style:TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),),
                const Text("mohammed@gmail.com", style:TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),),
                const Text("+971 583043451", style:TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),),

                const Spacer()
              ],
            ),
          ),
        ),
        // ),
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            height: 40,
                            width: 40,
                            child: const Center(
                              child: Text(
                                "M",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MarqueeWidget(
                                  child: Text(
                                    "Mohammed E U",

                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                MarqueeWidget(
                                  child: Text("mohammed@gmail.com",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(
                        Icons.person_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Edit Profile")
                    ],
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(() => const Profile(),
                        transition: Transition.rightToLeftWithFade);
                  },
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(
                        Icons.settings_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Settings")
                    ],
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(() => const Settings(),
                        transition: Transition.rightToLeftWithFade);
                  },
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(
                        Icons.details_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text("About Us")
                    ],
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(() => const AboutUs(),
                        transition: Transition.rightToLeftWithFade);
                  },
                ),
                ListTile(
                  title: const Divider(color: Colors.grey),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text("Logout",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Success'),
                          content:
                          const Text('Are you sure you want to logout?'),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                            TextButton(
                              child: const Text('Logout'),
                              onPressed: () {
                                Get.offAll(
                                      () => const Splash(),
                                  transition: Transition.rightToLeftWithFade,
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        endDrawerEnableOpenDragGesture: false,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
