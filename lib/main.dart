import 'package:event_calender_app/details.dart';
import 'package:event_calender_app/reusbale_widgets_constants.dart';
import 'package:flutter/material.dart';
import 'newpage.dart';
import 'package:event_calender_app/first_page.dart';
import 'package:event_calender_app/landing_page_afterlogin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: kThemeColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: kThemeColor, //<-- SEE HERE
        ),
      ),
      // home: (),
     home: MyApp(),
     //  home: DetailsPage(),
    ),
  );
}

