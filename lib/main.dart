import 'package:advanced_report_app/pages/Home_page.dart';
import 'package:advanced_report_app/pages/form_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        FormPage.id: (context) => FormPage()
      },
    );
  }
}


// git remote add origin https://github.com/Edwards2kx/advanced_report_app.git
// git branch -M main
// git push -u origin main