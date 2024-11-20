import 'package:flutter/material.dart';

class CustomSavedRecipes extends StatelessWidget {
  const CustomSavedRecipes(
      {super.key,
      required this.dishName,
      required this.name,
      required this.time,
      required this.rate,
      required this.image});

  final String dishName;
  final String name;
  final String time;
  final String rate;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Image.asset('assets/image/saved recipes/Rectangle 644.png'),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  dishName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xffD9D9D9),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.access_alarm,
                      color: Colors.white,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 16,
                      child: IconButton(
                        color: Colors.grey,
                        onPressed: () {},
                        icon: const ImageIcon(
                          size: 16,
                          color: Color(0xff129575),
                          AssetImage('assets/icons/Inactive.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 11,
            right: 7,
            child: Container(
              width: 45,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffFFE1B3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xffFFAD30),
                    size: 15,
                  ),
                  Text(
                    rate,
                    style: const TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
