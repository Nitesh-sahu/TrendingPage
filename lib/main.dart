import 'package:flutter/material.dart';
import 'dart:async';
import 'LoginPage.dart';
 void main()
 {
   runApp(
     MaterialApp(
       home: MyApp(),
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         brightness: Brightness.light,
         primaryColor: Colors.black,
       ),
       darkTheme: ThemeData(
         brightness: Brightness.dark,

       ),
     )
   );
 }
 class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 }
 class _MyAppState extends State<MyApp> {

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[

               Image(
                 image: AssetImage("image/splash.jpg"),   //Starting page logo
                 height: 200,
                 width: 200,
               ),
               Text(
                 "BLOGPOST",
                 style: TextStyle(
                   color: Colors.yellowAccent,
                   fontSize: 20.5,
                   fontWeight: FontWeight.w400,
                 ),
               ),

             ],
           ),
         ),
       ),
     );
   }
   startTime()async {
     var duration=new Duration(seconds: 2);          //SplashScreen Duration
     return new Timer(duration, navigation);

  }
  void navigation()
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
  }
 }
