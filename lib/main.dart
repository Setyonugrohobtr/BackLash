import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/SplashScreen.dart';


import 'package:flutter_bmi_calculator/screens/calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'BackLash',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HalamanHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blueGrey,
      body: new Center(
        
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image.asset(
              'images/BackLash.png',
              height: 200,
            ),
            SizedBox(
              height: 50,
            ),
            
                  SizedBox(width: 5),

Text(
                'BackLash Developer Copyright 2022'
              ),

                  TextFormField(
  decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Masukan nama akun anda (user)',
  ),
),


TextFormField(
  decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Masukan password anda (user)',
  ),
),
              
              new MaterialButton(
                
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalculatorScreen()));
                },
                child: Text('Masuk'),
                color: Colors.black,
                textColor: Colors.white,
                
              ),
              
            ],
          ),
        ),
        
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: SplashScreen(),
    );

  }
}
