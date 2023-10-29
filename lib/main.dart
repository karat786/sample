import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/view/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: 'Poppins',
        primarySwatch: Palette.appColorPalette,
        useMaterial3: false,

      ),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Palette {
  static const MaterialColor appColorPalette = MaterialColor(
    0xFF000000,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFF8FAFF),
      100: Color(0xFFECF0FF),
      200: Color(0xFFDCE4FF),
      300: Color(0xFFCBD6FF),
      400: Color(0xFFB8C7FF),
      500: Color(0xFFA3B7FF),
      600: Color(0xFF8BA4FD),
      700: Color(0xFF7693FD),
      800: Color(0xFF6484FD),
      900: Color(0xFF5175FF),
    },
  );
}

