import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Public Work Navigation App'),
      ),
      body: Center(
        child: MaterialButton(
          child: Text('Test Connection'),
          onPressed: (){
            // Adding test data to fire store
            DatabaseReference dbRef = FirebaseDatabase.instance.reference().child('Test');
            dbRef.set('IsConnected');
          },
        ),
      ),
    );
  }
}
