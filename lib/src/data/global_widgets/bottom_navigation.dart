import 'package:ecommerce/src/modules/account/view/account_view.dart';
import 'package:ecommerce/src/modules/home/views/home_view.dart';
import 'package:ecommerce/src/modules/wishlist/view/wishlist_view.dart';
import 'package:flutter/material.dart';
import '../../modules/checkout/views/checkout_view.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  static const pages = [HomeView(), WishListView(),CheckOutView(), AccountView(),];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_home.png'), label: '' ),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black,), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.account_box,color: Colors.black), label: '')
        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
