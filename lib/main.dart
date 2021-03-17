import 'package:flutter/material.dart';
import 'login_body.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
   
      title: 'Flutter Login',
      
      theme: ThemeData(
        
       
        scaffoldBackgroundColor: Colors.black,
      ),
      home: WelcomeLogin(),
    );
  }
}
