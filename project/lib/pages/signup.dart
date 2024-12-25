import 'package:flutter/material.dart';
import 'package:project/pages/bottomnav.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/login.dart';
import 'package:project/widget/widget_support.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    "images/logo.png",
                    width: MediaQuery.of(context).size.width / 2,
                    fit: BoxFit.cover,
                  )),
                  SizedBox(
                    height: 50.0,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(30),
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sign Up",
                            style: Appwidget.HeadTextFieldStyle(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: Appwidget.semiboldTextFieldStyle(),
                              prefixIcon: Icon(Icons.person_outline),
                              border: InputBorder.none,
                            ),
                          ),SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: Appwidget.semiboldTextFieldStyle(),
                              prefixIcon: Icon(Icons.email_outlined),
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "password",
                              hintStyle: Appwidget.semiboldTextFieldStyle(),
                              prefixIcon: Icon(Icons.password_outlined),
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          
                          Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forgot Password?",
                                style: Appwidget.semiboldTextFieldStyle(),
                              )),
                          SizedBox(
                            height: 80,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 5,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xFFff5c30),
                                  borderRadius: BorderRadius.circular(20)
                                  ),
                              child: GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnav())),
                                child: Center(
                                    child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ),
                          
                        ],
                        
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text("Already have an account? Login",
                                style: Appwidget.semiboldTextFieldStyle()),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}