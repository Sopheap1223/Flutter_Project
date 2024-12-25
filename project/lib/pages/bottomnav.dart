import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/order.dart';
import 'package:project/pages/profile.dart';
import 'package:project/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentTabindex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home home;
  late Order order;
  late Profile profile;
  late Wallet wallet;
  @override
  void initState() {
    home = const Home();
    order = const Order();
    profile = const Profile();
    wallet = const Wallet();
    pages = [home, order, profile, wallet];
    currentPage = home;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabindex = index;
              currentPage = pages[index];
            });
          },
      items: [
        const Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
        const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
        const Icon(
          Icons.person_outline,
          color: Colors.white,
        ),
        const Icon(
          Icons.wallet_outlined,
          color: Colors.white,
        ),
      ],
      ),
      body: pages[currentTabindex],
      );
  }
}
