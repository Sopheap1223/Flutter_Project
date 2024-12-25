import 'package:flutter/material.dart';
import 'package:project/widget/widget_support.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
                elevation: 2.0,
                child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Center(
                        child: Text(
                      "Wallet",
                      style: Appwidget.HeadTextFieldStyle(),),
                    ),
                    ),
                    ),SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Image.asset("images/wallet.png", width: 100, height: 100,fit:  BoxFit.cover),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Your Wallet", style: Appwidget.LightTextFieldStyle(),),
                        SizedBox(height: 5,),
                        Text("\$ "+"100", style: Appwidget.boldTextFieldStyle(),)
                      ],)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Add Money", style: Appwidget.semiboldTextFieldStyle(),),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  child: Text("\$"+"5", style: Appwidget.semiboldTextFieldStyle(),),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  child: Text("\$"+"10", style: Appwidget.semiboldTextFieldStyle(),),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  child: Text("\$"+"15", style: Appwidget.semiboldTextFieldStyle(),),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  child: Text("\$"+"20", style: Appwidget.semiboldTextFieldStyle(),),
                  )
                ],),
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Add Money", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),),
                )
          ],
        ),
      ),
    );
  }
}
