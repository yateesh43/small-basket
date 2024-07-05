import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Map<String, dynamic>> _cartItems = [
    {
      'name': 'Apple',
      'price': 2.0,
      'quantity': 3,
      'image': 'https://images.pexels.com/photos/102104/pexels-photo-102104.jpeg'
    },
    {
      'name': 'Banana',
      'price': 1.5,
      'quantity': 2,
      'image': 'https://5.imimg.com/data5/SELLER/Default/2022/12/EK/NP/CN/49293026/fresh-banana-fruit.webp'
    },
    {
      'name': 'Carrot',
      'price': 1.0,
      'quantity': 5,
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1bHLUh-bFV4l0TGKB_KqNx2dSGF4JH3K5nw&s'
    },
  ];

  double _calculateTotal() {
    return _cartItems.fold(0.0, (total, item) {
      return total + (item['price'] * item['quantity']);
    });
  }

  void _showOrderPlacedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Order Placed'),
          content: Text('Order placed successfully!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _cartItems.length,
                itemBuilder: (context, index) {
                  final item = _cartItems[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: Image.network(item['image']),
                      title: Text(item['name']),
                      subtitle: Text('Rs${item['price']} x ${item['quantity']}'),
                      trailing: Text('Rs${(item['price'] * item['quantity']).toStringAsFixed(2)}'),
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rs${_calculateTotal().toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _showOrderPlacedDialog();
                },
                child: Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 13, 228, 20),
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: Center(
//         child: Icon(Icons.shopping_cart_outlined,
//         size: 100,
//         color: Colors.black,
//         ),
//       ),
//     );
//   }
// }