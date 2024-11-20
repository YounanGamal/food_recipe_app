import 'package:flutter/material.dart';

class CustomNewRecipesCard extends StatelessWidget {
  const CustomNewRecipesCard({
    super.key,
    required this.newRecipesCard,
    required this.time,
    required this.name,
    required this.image,
  });

  final String newRecipesCard;
  final String name;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 15),
          height: 95,
          width: 251,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(5, 5),
                spreadRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.center,
                newRecipesCard,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff484848),
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAD30),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAD30),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAD30),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAD30),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAD30),
                    size: 15,
                  ),
                ],
              ),
              Row(
                children: [
                  const CircleAvatar(),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.access_alarm,
                    color: Color(0xffA9A9A9),
                    size: 14,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xffA9A9A9),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -25,
          right: 0,
          child: Image.asset(image),
        ),
      ],
    );
  }
}
