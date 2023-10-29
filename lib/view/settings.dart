import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Settings",
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
            children: [
              Spacer(),
              Center(child: Text("Settings")),
              Spacer()
            ],
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
