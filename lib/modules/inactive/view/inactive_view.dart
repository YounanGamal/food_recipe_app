import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/saved_recipes.dart';
import 'package:food_recipe_app/modules/inactive/widget/custom_saved_recipes.dart';

class InactiveView extends StatelessWidget {
  const InactiveView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Saved recipes'),
        centerTitle: true,
      ),
      body: saves == null
          ? const Center(
              child: Text('data'),
            )
          : ListView.builder(
              itemCount: saves.length,
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
              itemBuilder: (context, index) {
                return CustomSavedRecipes(
                  dishName: saves[index].dishName,
                  name: saves[index].name,
                  time: saves[index].time,
                  rate: saves[index].rate,
                  image: saves[index].image,
                );
              },
            ),
    );
  }
}

List<SavedRecipes> saves = [
  SavedRecipes(
      dishName: 'Traditional spare ribs \nbaked',
      name: 'By Chef John',
      time: '20 min',
      rate: '4.0',
      image: 'assets/image/saved recipes/Rectangle1.png'),
  SavedRecipes(
      dishName: 'spice roasted chicken \nwith flavored rice',
      name: 'By Mark Kelvin',
      time: '20 min',
      rate: '4.0',
      image: 'assets/image/saved recipes/Rectangle2.png'),
  SavedRecipes(
      dishName: 'Lamb chops with fruity \ncouscous and mint',
      name: 'By Spicy Nelly',
      time: '20 min',
      rate: '3.0',
      image: 'assets/image/saved recipes/Rectangle3.png'),
  SavedRecipes(
      dishName: 'Spicy fried rice mix \nchicken bali',
      name: 'By Spicy Nelly',
      time: '20 min',
      rate: '4.0',
      image: 'assets/image/saved recipes/Rectangle4.png'),
  SavedRecipes(
      dishName: 'Traditional spare ribs \nbaked',
      name: 'By Chef John',
      time: '20 min',
      rate: '4.0',
      image: 'assets/image/saved recipes/Rectangle1.png'),
];
