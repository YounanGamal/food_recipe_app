import 'package:flutter/material.dart';
import 'package:food_recipe_app/modules/home/view/home_view.dart';
import 'package:food_recipe_app/modules/inactive/view/inactive_view.dart';
import 'package:food_recipe_app/modules/notification/view/notification_view.dart';
import 'package:food_recipe_app/modules/profile/view/profile_view.dart';

class LayoutView extends StatefulWidget {
  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> tabs = [
    HomeView(),
    InactiveView(),
    NotificationView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.all(1),
          color: Colors.white,
          height: 82,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                icon: ImageIcon(
                  color: currentIndex == 0
                      ? const Color(0xff129575)
                      : const Color(0xffD9D9D9),
                  const AssetImage('assets/icons/home.png'),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                icon: ImageIcon(
                  color: currentIndex == 1
                      ? const Color(0xff129575)
                      : const Color(0xffD9D9D9),
                  const AssetImage('assets/icons/Inactive.png'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.19,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                icon: ImageIcon(
                  color: currentIndex == 2
                      ? const Color(0xff129575)
                      : const Color(0xffD9D9D9),
                  const AssetImage('assets/icons/notification-bing.png'),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                icon: ImageIcon(
                  color: currentIndex == 3
                      ? const Color(0xff129575)
                      : const Color(0xffD9D9D9),
                  const AssetImage('assets/icons/profile.png'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          splashColor: const Color(0xff129575),
          backgroundColor: const Color(0xff129575),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {},
          child: const CircleAvatar(
            backgroundColor: Color(0xff129575),
            radius: 25,
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        body: tabs[currentIndex],
      ),
    );
  }
}
