import 'package:flutter/material.dart';
import 'Homepage.dart';
 class LoginPage extends StatefulWidget {
   @override
   _LoginPageState createState() => _LoginPageState();
 }
 
 class _LoginPageState extends State<LoginPage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black45,

       body:ListView(
         children: <Widget>[
           Divider(
             color: Colors.transparent,
             height: 40.0,
           ),
           Image(
             image: NetworkImage("https://makeawebsitehub.com/wp-content/uploads/2016/01/coding.jpg"),
              height: 200.0,
             width: 200.0,
           ),
           Divider(
             color: Colors.transparent,
             height: 30.0,
           ),
           TextField(
             scrollPadding: EdgeInsets.all(10.0),
             keyboardType: TextInputType.emailAddress,
             style: TextStyle(fontSize: 15.0,color: Colors.amberAccent),
             
             decoration:InputDecoration(
               border:OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30.0),
                  gapPadding: 50.0,

             ) ,

               counterStyle: TextStyle(color: Colors.amberAccent,fontSize: 10.0),
               hintText: "EmailId",
               hintStyle: TextStyle(color: Colors.amberAccent,fontSize: 15.0),
             ),
             controller: username,
           ),
           Divider(
             color: Colors.transparent,
             height: 30.0,
           ),
           TextField(
             style: TextStyle(color: Colors.amberAccent,fontSize: 10.0),
             decoration: InputDecoration(
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
               helperStyle: TextStyle(fontSize: 15.0,color: Colors.amberAccent),
               hintText: "Password",

               helperText:check==true?"":"Wrong Credentials" ,

               hintStyle: TextStyle(fontSize: 15.0,color: Colors.amberAccent),
             ),
             controller: password,
             obscureText: true,

           ),
           Divider(
             color: Colors.transparent,
             height: 30.0,
           ),
          Padding(
              padding:EdgeInsets.fromLTRB(70, 0, 70, 0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),

              ),
              splashColor: Colors.red,
              child: Text("Login",style: TextStyle(fontSize: 16.0),),
              color: Colors.blue,
              onPressed: () {
                if (username.text == "Nitesh@gmail.com" &&
                    password.text == "admin") {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Homepage()));

                }
                else {
                      print("sorry you have entereed wrong credentials");
                      setState(() {//changing the state of the textfield when i input wrong credetials through it
                                    username.text = "";
                                     password.text = "";
                                  });
                    }
              }

            ),

          ),
         ],
       ),
     );
   }
   final  username=TextEditingController();
   final password=TextEditingController();
   bool check=true;
   bool hide=true;
 }
 