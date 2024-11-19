import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/page_route_name.dart';
import 'package:food_recipe_app/model/dish_card_model.dart';
import 'package:food_recipe_app/model/new_recipes_card_model.dart';
import 'package:food_recipe_app/modules/home/widget/custom_dish_card.dart';
import 'package:food_recipe_app/modules/home/widget/custom_new_recipes_card.dart';
import 'package:food_recipe_app/widget/custom_search.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(
                    top: 64,
                    right: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Jega',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'What are you cooking today?',
                            style: TextStyle(
                              color: Color(0xffA9A9A9),
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffFFCE80),
                        ),
                        child: Image.asset('assets/icons/person.png'),
                      )
                    ],
                  )),
              Hero(
                tag: 'searchHero',
                child: CustomSearch(
                  readOnly: true,
                  onTapTextField: () {
                    Navigator.pushNamed(context, PageRouteName.search);
                  },
                  paddingTop: 30,
                ),
              ),
              const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicator: BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Color(0xff129575),
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  indicatorRadius: 10,
                  insets: EdgeInsets.all(1),
                  padding: EdgeInsets.all(10),
                ),
                unselectedLabelColor: Color(0xff129575),
                padding: EdgeInsets.symmetric(vertical: 25),
                splashBorderRadius: BorderRadius.all(Radius.circular(10)),
                labelColor: Colors.white,
                dividerColor: Colors.transparent,
                tabs: [
                  Text('All'),
                  Text('Indian'),
                  Text('Italian'),
                  Text('Asian'),
                  Text('Chinese'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 231,
                child: ListView.builder(
                  clipBehavior: Clip.none,
                  itemCount: dishes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCard(
                    dishName: dishes[index].dishName,
                    image: dishes[index].image,
                    time: dishes[index].time,
                    rate: dishes[index].rate,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  'New Recipes',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 127,
                child: ListView.builder(
                  clipBehavior: Clip.none,
                  itemCount: newRecipes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomNewRecipesCard(
                    newRecipesCard: newRecipes[index].newRecipesName,
                    name: newRecipes[index].name,
                    time: newRecipes[index].time,
                    image: newRecipes[index].image,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<NewRecipesCardModel> newRecipes = [
  NewRecipesCardModel(
      newRecipesName: 'Steak with tomato \nsauce and bulgur rice.',
      name: 'By James Milner',
      time: '20 mins',
      image: 'assets/image/new recipes/newRecipes1.png'),
  NewRecipesCardModel(
      newRecipesName: 'Pilaf sweet with \nlamb-and-raisins',
      name: 'By Laura wilson',
      time: '20 mins',
      image: 'assets/image/new recipes/newRecipes2.png'),
  NewRecipesCardModel(
      newRecipesName: 'Rice Pilaf, Broccoli \nand Chicken',
      name: 'By Lucas Moura',
      time: '20 mins',
      image: 'assets/image/new recipes/newRecipes3.png'),
  NewRecipesCardModel(
      newRecipesName: 'Chicken meal with \nsauce',
      name: 'By Issabella Ethan',
      time: '20 mins',
      image: 'assets/image/new recipes/newRecipes4.png'),
  NewRecipesCardModel(
      newRecipesName: 'Stir-fry chicken \nwith broccoli in sweet and sour sauce and rice.',
      name: 'By Miquel Ferran',
      time: '20 mins',
      image: 'assets/image/new recipes/newRecipes5.png'),
];
List<DishCardModel> dishes = [
  DishCardModel(
      dishName: 'Classic Greek \nSalad',
      image: 'assets/image/dishes/Image1.png',
      rate: '4.5',
      time: '15 Mins'),
  DishCardModel(
      dishName: 'Crunchy Nut \nColeslaw',
      image: 'assets/image/dishes/Image2.png',
      rate: '3.5',
      time: '10 Mins'),
  DishCardModel(
      dishName: 'Shrimp Chicken \nAndouille\n Sausage Jambalaya',
      image: 'assets/image/dishes/Image3.png',
      rate: '3.0',
      time: '10 Mins'),
  DishCardModel(
      dishName: 'Barbecue Chicken \nJollof\n Rice',
      image: 'assets/image/dishes/Image4.png',
      rate: '4.5',
      time: '10 Mins'),
  DishCardModel(
      dishName: 'Portuguese Piri \nChicken',
      image: 'assets/image/dishes/Image5.png',
      rate: '4.5',
      time: '10 Mins'),
];
