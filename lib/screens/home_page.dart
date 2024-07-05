import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myapp/screens/login.dart';

import 'package:myapp/widgets/sideDashBoard.dart';


import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/category.dart';
import 'package:myapp/screens/search.dart';
import 'package:myapp/screens/cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const MyCategory(),
    const SearchPage(),
    const CartPage(),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: Text(
          'Small Basket',
          style: GoogleFonts.lobster(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 13, 228, 20),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
              },
               child: Text('Login', style: TextStyle(color: Colors.black),)
               ),
          ),
        ],
      ),

      // Drawer
      drawer: MyDrawer(),


      // Body
      body: screens[currentIndex],



      // Bottom Navigation Bar
      bottomNavigationBar:  Container(
        color: Color.fromARGB(255, 13, 228, 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 25, 226, 32),
            
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white.withOpacity(0.3),
            gap: 8,
            padding: const EdgeInsets.all(16),
          
            
          
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                iconColor: Colors.white,
                text: 'Home',
              ),
              GButton(
                icon: Icons.category_outlined,
                iconColor: Colors.white,
                text: 'Category',
              ),
              GButton(
                icon: Icons.search_sharp,
                iconColor: Colors.white,
                text: 'Search',
              ),
              GButton(
                icon: Icons.shopping_cart_outlined,
                iconColor: Colors.white,
                text: 'Cart',
              ),
            ],
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
