import 'package:flutter/material.dart';
import 'package:uberclone/BrandColors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 40,),
                Image(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 150.0,
                  image: AssetImage('assets/images/cg_logo.png'),
                ),
                SizedBox(height: 10,),
                Text(
                    'Public Work Navigation App',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  'Government of Chhattisgarh',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // email address
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),

                        ),
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      // password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),

                        ),
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 20,),
                      // login button
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: (){},
                        color: BrandColors.colorGreen,
                        textColor: Colors.white,
                        child: Container(
                          height: 40.0,
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Bolt-Bold',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  ' \u00a9 2020 - Office of the Chief Technical Examiner (Vigilance)',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
