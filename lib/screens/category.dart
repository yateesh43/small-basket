import 'package:flutter/material.dart';
import 'package:myapp/pageCategory/fruits.dart';
import 'package:myapp/pageCategory/pulses.dart';
import 'package:myapp/pageCategory/spices.dart';

class MyCategory extends StatefulWidget {
  const MyCategory({super.key});

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  final List<Map<String, dynamic>> categories = [
    {
      'title': 'Fruits',
      'image':
          'https://img.freepik.com/free-photo/vibrant-collection-healthy-fruit-vegetables-generated-by-ai_24640-80425.jpg',
      'page': MyFruits(),
    },
    {
      'title': 'Pulses',
      'image':
          'https://7thff.com/img/banner/largest-producer-of-pulses-in-india.jpg',
      'page': MyPulses(),
    },
    {
      'title': 'Spices',
      'image': 'https://someindiangirl.com/wp-content/uploads/2020/01/780-2.jpg',
      'page': MySpices(),
    },
    {
      'title': 'Snacks',
      'image':
          'https://s7ap1.scene7.com/is/image/itcportalprod/HeroBanner_PC_Desktop_5120x2880_4x?fmt=webp-alpha',
    },
    {
      'title': 'Biscuits',
      'image':
          'https://miro.medium.com/max/1400/1*E3dREhF5d2DEJi2y7yBj4g.png',
    },
    {
      'title': 'Pickles',
      'image':
          'https://m.media-amazon.com/images/I/71pY43Sj0RL.jpg',
    },
    {
      'title': 'Detergents',
      'image':
          'https://www.hul.co.in/content-images/92ui5egz/production/6b1084c73784a3935b26963ce87000c0af1a9343-1920x1080.jpg?rect=1,0,1919,1080&w=375&h=211&fit=crop&auto=format',
    },
    {
      'title': 'Soaps',
      'image':
          'https://media.licdn.com/dms/image/C5112AQHmIZzPDSvaRA/article-cover_image-shrink_600_2000/0/1520174083346?e=2147483647&v=beta&t=IABtuTKUxh3fgaKwUR8eIlCh19UAdmTVHbShOEGorFs',
    },
    {
      'title': 'Pastes',
      'image':
          'https://media.licdn.com/dms/image/C5612AQGMfGjUu1NVZQ/article-cover_image-shrink_600_2000/0/1639367939586?e=2147483647&v=beta&t=7cGuMvLF5eoXWaAk1CpHsmihi_VZyn2TA6uPHoIGfXM',
    },
    {
      'title': 'Domestic cleaners',
      'image':
          'https://i.pinimg.com/736x/6b/56/1d/6b561d1abd2dfd38a789cc7ffa943fca.jpg',
    },
  ];

  Widget buildCategoryCard(Map<String, dynamic> category) {
    return Card(
      color: Theme.of(context).colorScheme.surface, // Set the background color to blend with the app theme
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              category['image'],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              category['title'],
              textAlign: TextAlign.center, // Center the text
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: category['page'] != null
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => category['page'],
                      ),
                    );
                  }
                : null,
            child: Text(
              'See more',
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return buildCategoryCard(categories[index]);
          },
        ),
      ),
    );
  }
}
