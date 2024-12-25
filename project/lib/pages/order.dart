import 'package:flutter/material.dart';
import 'package:project/widget/widget_support.dart';
class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Material(
            elevation: 2,
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Order",
                  style: Appwidget.HeadTextFieldStyle(),
                ),
              ),
            ),
          ),SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20,),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Row(   
                  crossAxisAlignment: CrossAxisAlignment.start,         
                children: [Container(
                  height:70,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("2")),
                ),
                SizedBox(width: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset("images/salad2.png", height: 100, width: 100, fit: BoxFit.cover,)),
                SizedBox(width: 20,),
                  Column(children: [
                    Text("salad", style: Appwidget.semiboldTextFieldStyle(),),
                    Text("10 \$", style: Appwidget.semiboldTextFieldStyle(),),
                    
                  ],)],
              ),),
            ),
          ),
          Spacer(),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total price", style: Appwidget.boldTextFieldStyle(),),
                Text("\$10" , style: Appwidget.semiboldTextFieldStyle(),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 20, right: 20,bottom: 30),
            child: Center(child: Text("checkout", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20 ),)),
          )
        ],),
      ),
    );
  }
}