import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<StatefulWidget> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "About Us",
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
              Center(child: Text("About Us")),
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
