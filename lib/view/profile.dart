import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Profile",
            style: TextStyle(fontSize: 16),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [Spacer(), Center(child: Text("Profile")), Spacer()],
          ),
        ),
      ),
      // ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
