import 'package:flutter/material.dart';
import 'package:myapp/models/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> bestSellingItems = [
    {
      'title': 'Rice',
      'image': 'https://5.imimg.com/data5/UB/WG/JK/SELLER-98634555/brown-plain-industrial-jute-sack-bag.jpg',
      'price': 'Rs 1500.00',
    },
    {
      'title': 'Kandipappu',
      'image': 'https://i.gadgets360cdn.com/products/kandipappu-parippu-toor-dal-large-93344-162284-1589393082-1.jpg',
      'price': 'Rs 180.00',
    },
    {
      'title': 'Elachi',
      'image': 'https://rukminim2.flixcart.com/image/850/1000/ky0g58w0/spice-masala/g/b/a/green-cardamom-whole-hari-elaichi-green-elachi-8-mm-bold-original-imagac3nzfy2mk8z.jpeg?q=90&crop=false',
      'price': 'Rs 30.00',
    },
    {
      'title': 'Tamarind',
      'image': 'https://www.urbangroc.com/wp-content/uploads/2021/04/tamarind-01-02.jpg',
      'price': 'Rs 30.00',
    },
     {
      'title': 'Kaju',
      'image': 'https://5.imimg.com/data5/FJ/MB/MY-7435813/cashew-nut-kaju-akha-500x500.jpg',
      'price': 'Rs 30.00',
    },
     {
      'title': 'Taj Mahal',
      'image': 'https://m.media-amazon.com/images/I/71E9VvHEUOL._AC_UF1000,1000_QL80_.jpg',
      'price': 'Rs 30.00',
    },
     {
      'title': 'Bru',
      'image': 'https://m.media-amazon.com/images/I/61O-Uhw4O4L._AC_UF1000,1000_QL80_.jpg',
      'price': 'Rs 30.00',
    },
    // Add more items here
  ];

  Widget buildBestSellingItem(Map<String, dynamic> item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      margin: EdgeInsets.all(5.0), // Adding margin to the card
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              item['image'],
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['title'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    item['price'],
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400, // Set the height of the carousel
              child: MyCarousel(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Best Selling Items',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: bestSellingItems.length,
                itemBuilder: (context, index) {
                  return buildBestSellingItem(bestSellingItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
