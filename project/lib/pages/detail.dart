import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/order.dart';
import 'package:project/widget/widget_support.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fresh and Healthy",
                    style: Appwidget.semiboldTextFieldStyle(),
                  ),
                  Text(
                    "Salad",
                    style: Appwidget.boldTextFieldStyle(),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  if (a > 1) {
                    a--;
                  }
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                a.toString(),
                style: Appwidget.boldTextFieldStyle(),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    a++;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Text(
              "Salads are healthy and full of nutrients like vitamins and minerals. They help with weight control by keeping you full, improve digestion with fiber, and boost your immune system with fresh ingredients like fruits and vegetables. Adding healthy fats like avocado or olive oil can improve heart health, and water-rich veggies like cucumber help you stay hydrated. Salads also have antioxidants that are great for your skin. Best of all, they’re easy to make and can be customized with your favorite toppings and dressings for a tasty and healthy meal.",
              style: Appwidget.LightTextFieldStyle(),
            ),SizedBox(height: 30,),
            Row(children: [
              Text("Delivery Time: 25 min", style: Appwidget.semiboldTextFieldStyle(),),
              SizedBox(width: 10,),
              Icon(Icons.alarm, color: Colors.black,)
            ],),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(children: [
                  Text("Total Price", style: Appwidget.semiboldTextFieldStyle(),),
                  Text("\$${a*10}", style: Appwidget.HeadTextFieldStyle(),)
                ],),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(children: [
                    Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Order())),
                      child: Text("Add to Cart", style: Appwidget.semiboldTextFieldStyle().copyWith(color: Colors.white)))
                  ],),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
