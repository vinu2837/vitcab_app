import 'dart:async';


import 'package:flutter/material.dart';
import 'package:vitcab_app/assistants/assistant_methods.dart';
import 'package:vitcab_app/authentication/login_screen.dart';
import 'package:vitcab_app/global/global.dart';
import 'package:vitcab_app/mainScreens/main_screen.dart';

class MySplashScreen extends StatefulWidget
{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
{

  startTimer()
  {
    fAuth.currentUser != null ? AssistantMethods.readCurrentOnlineUserInfo() :null;
    Timer(const Duration(seconds: 3), () async
    {
      if(await fAuth.currentUser !=null)
        {
          currentFirebaseUser = fAuth.currentUser;
          Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
        }
      else
      {
       Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
      }


    });
  }
  @override
  void initState() {
    super.initState();

    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("images/logo.png"),

              const SizedBox(height: 10,),

              const Text(
                "VitCab Users App",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
