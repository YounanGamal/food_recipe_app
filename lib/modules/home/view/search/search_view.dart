import 'package:flutter/material.dart';
import 'package:food_recipe_app/widget/custom_search.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Search recipe'),
      ),
      body: const Column(
        children: [
          Hero(
            tag: 'searchHero',
            child: CustomSearch(
              readOnly: false,
              paddingTop: 17,
              paddingLeft: 30,
            ),
          ),
        ],
      ),
    );
  }
}
