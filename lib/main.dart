import 'package:flutter/material.dart';
// import 'newpage.dart';
import 'package:event_calender_app/first_page.dart';
// import 'package:event_calender_app/landing_page_afterlogin.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.deepPurpleAccent, //<-- SEE HERE
        ),
      ),
      home: MyApp(),
    //  home: HomePage(),
      //home: NewPage(),q
    ),
  );
}

