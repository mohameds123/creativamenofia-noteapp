import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 32,top: 80,right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Text(
                  "Hi, Welcome back",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Email",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              
              ),
              
              decoration: InputDecoration(
                hintText: "example@gmail.com",
                filled: true,
                fillColor: Color.fromRGBO(242, 214, 241, 0.08),
                border: InputBorder.none
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,

              ),

              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  filled: true,
                  fillColor: Color.fromRGBO(242, 214, 241, 0.08),
                  border: InputBorder.none
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
               },
              child: Center(
                child: Container(
                  width: 312,
                  height: 48,
                  color: Colors.white,
                  child: Center(child: Text("Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: (){},
              child: Center(
                child: Container(
                  width: 312,
                  height: 48,
                  color: Colors.white,
                  child: Center(child: Text("Continue with google",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  )),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
