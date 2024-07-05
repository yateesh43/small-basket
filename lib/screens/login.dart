import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Small Basket',
          style: GoogleFonts.lobster(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 29, 202, 34),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  'images/shopping-cart.png',
                  height: 150,
                  width: 150,
                ),
                const SizedBox(height: 0),
                Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lobster(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 29, 202, 34),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                  ),
                  onPressed: () {
                    // Add your login logic here
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';



// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(
//         'Small Basket',
//         style: GoogleFonts.lobster(
//           color: Colors.black,
//           fontSize: 30,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//       backgroundColor: Color.fromARGB(255, 29, 202, 34),
//     ),
//     body: SingleChildScrollView(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'images/shopping-cart.png',
//               height: 200,
//               width: 200,
//             ),
//             Text(
//               'Login',
//               textAlign: TextAlign.center,
//               style: GoogleFonts.lobster(
//                 color: Colors.black,
//                 fontSize: 30,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 15),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     labelText: 'Username',
//                     hintText: 'Enter your username',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     )),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     suffixIcon: const Icon(Icons.remove_red_eye),
//                     labelText: 'Password',
//                     hintText: 'Enter your password',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20))),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Color.fromARGB(255, 29, 202, 34),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20))),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text(
//                 'Login',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//             ),
//             SizedBox(height: 20), // Adjust spacing as needed
//           ],
//         ),
//       ),
//     ),
//   );
// }

// }

