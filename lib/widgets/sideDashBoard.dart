import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/profile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _buildCustomDrawerHeader(),
          _buildDrawerItem(
            icon: Icons.person_2_outlined,
            text: 'My Profile',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          _buildDrawerItem(
            icon: Icons.favorite_border,
            text: 'Favorite',
            onTap: () {},
          ),
          _buildDrawerItem(
            icon: Icons.help_outline,
            text: 'Help',
            onTap: () {},
          ),
          Divider(),
          _buildDrawerItem(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () {},
          ),
          Spacer(),
          _buildDrawerItem(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildCustomDrawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://img.freepik.com/free-photo/realistic-water-drop-with-ecosystem_23-2151196399.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      accountName: Text(
        'PrabhasRaju',
        style: GoogleFonts.roboto(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      accountEmail: Text(
        'prabhasraju@gmail.com',
        style: GoogleFonts.roboto(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtt5E9SGRv7HC3eS-r4c08Iv88YVgC4iE2rA&s'),
      ),
    );
  }

  Widget _buildDrawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/screens/profile.dart';


// class MyDrawer extends StatefulWidget {
//   const MyDrawer({Key? key}) : super(key: key);

//   @override
//   State<MyDrawer> createState() => _MyDrawerState();
// }

// class _MyDrawerState extends State<MyDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: [
//           UserAccountsDrawerHeader(
//             accountName: Text('PrabhasRaju', style: GoogleFonts.roboto(color: Colors.black),),
//             accountEmail: Text('prabhasraju@gmail.com', style: GoogleFonts.roboto(color: Colors.black),),
//             currentAccountPicture: CircleAvatar(
//               backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtt5E9SGRv7HC3eS-r4c08Iv88YVgC4iE2rA&s'),
//             ),
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 25, 226, 32),
//             ),
//           ),
          
//           ListTile(
//             leading: Icon(Icons.person_2_outlined),
//             title: Text('MyProfile'),
//             onTap: () {
// // Suggested code may be subject to a license. Learn more: ~LicenseLog:2279196929.
//               Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
//             },
//           ),

//           ListTile(
//             leading: Icon(Icons.favorite_border),
//             title: Text('Favorite'),
//             onTap: () => Null,
//           ),

//           ListTile(
//             leading: Icon(Icons.help_outline),
//             title: Text('Help'),
//             onTap: () => Null,
//           ),

//           Divider(),
//           ListTile(
//             leading: Icon(Icons.logout),
//             title: Text('Logout'),
//             onTap: () => Null,
//           ),



//         ],
//       ),
//     );
//   }
// }
