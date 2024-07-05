import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> _searchSuggestions = [
    'apple',
    'banana',
    'carrot',
    'dal',
    'eggplant',
    'fish',
    'grapes',
    'honey',
    'ice cream',
    'jackfruit',
    'kale',
    'lentils',
    'mango',
    'nuts',
    'oranges',
    'peppers',
    'quinoa',
    'rice',
    'spinach',
    'tomato',
    'udon noodles',
    'vanilla',
    'watermelon',
    'xanthan gum',
    'yogurt',
    'zucchini'
  ];

  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> _searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  return _searchSuggestions.where((String option) {
                    return option.contains(textEditingValue.text.toLowerCase());
                  });
                },
                fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {
                  return TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      hintText: 'Search groceries...',
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () {
                          // Implement your search action here
                        },
                        icon: Icon(Icons.search),
                      ),
                    ),
                    onChanged: (value) {
                      final newResults = _searchSuggestions
                          .where((option) => option.contains(value.toLowerCase()))
                          .toList();
                      _updateSearchResults(newResults);
                    },
                  );
                },
                onSelected: (String selection) {
                  print('You selected: $selection');
                },
              ),
            ),
            Expanded(
              child: AnimatedList(
                key: _listKey,
                initialItemCount: _searchResults.length,
                itemBuilder: (context, index, animation) {
                  return _buildListItem(_searchResults[index], animation);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String item, Animation<double> animation) {
    return FadeTransition(
      opacity: animation,
      child: ListTile(
        title: Text(item),
        leading: Icon(Icons.local_grocery_store),
      ),
    );
  }

  void _updateSearchResults(List<String> newResults) {
    final oldResults = _searchResults;
    final oldCount = _searchResults.length;
    _searchResults = newResults;
    final newCount = newResults.length;

    for (int i = 0; i < newCount; i++) {
      if (i >= oldCount) {
        _listKey.currentState!.insertItem(i);
      }
    }

    for (int i = oldCount - 1; i >= newCount; i--) {
      final item = oldResults[i];
      _listKey.currentState!.removeItem(
        i,
        (context, animation) => _buildListItem(item, animation),
      );
    }
  }
}

