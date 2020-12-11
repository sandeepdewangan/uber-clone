import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
// from project
import  'pages/login_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
      appId: '1:297855924061:ios:c6de2b69b03a5be8',
      apiKey: 'AIzaSyD_shO5mfO9lhy2TVWhfo1VUmARKlG4suk',
      projectId: 'flutter-firebase-plugins',
      messagingSenderId: '297855924061',
      databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
    )
        : FirebaseOptions(
      appId: '1:467480625039:android:a73517b767329f45f055fa',
      apiKey: 'AIzaSyDoYJSJImt5gLfLJgMiUgi2gXkoITFqHfo',
      messagingSenderId: '467480625039-elpp36sv4gnn1inoos3aki5t4aeahfga.apps.googleusercontent.com',
      projectId: 'uberclone-c2b3c',
      databaseURL: 'https://uberclone-c2b3c-default-rtdb.firebaseio.com',
    ),
  );
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Bolt-Regular',
      primarySwatch: Colors.blue,
    ),
    title: 'Flutter Database Example',
    home: LoginPage(),
  ));
}





