import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.green[100],
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              SizedBox(child: const Image(image: AssetImage('LogoTeamUp.png')), height: 400,),

              //email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.0,),
              //textfield password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[400],
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.check, size: 20,) ,
                    label: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    )),
              ),

              SizedBox(height: 30,),
              Container(
                child: Text(
                  "---------------------  OR   ---------------------",style: TextStyle(color: Colors.green[400]),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 180.0),
                child: Container(
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          shape: CircleBorder(),
                          shadowColor: Colors.green,
                        ),
                        child: const Image(
                          image: AssetImage("MiniGoogleLogo.png"),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () => GoogleSignIn(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: CircleBorder(),
                            shadowColor: Colors.green,
                          ),
                          child: const Image(
                            image: AssetImage("MiniFacbookLogo.png"),
                            height: 50,
                            width: 50,
                          ),
                      ),
                    ],
                  ),
                ),
              ),











            ],
          ),
        ),
      ),
    );
  }
}