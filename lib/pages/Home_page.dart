import 'package:advanced_report_app/pages/form_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(HomePage.id)),
      backgroundColor: (Colors.grey[100]),
      body: Center(
        child: IconButton(
          color: Colors.black,
          iconSize: 40.0,
          
          icon: Icon(Icons.arrow_forward),
          
          onPressed: (){
            Navigator.pushNamed(context, FormPage.id);
          },
        ),
      ),
    );
  }
}
