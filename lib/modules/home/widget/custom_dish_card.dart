import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key, required this.dishName, required this.rate, required this.time, required this.image});
  final String dishName;
  final String rate;
  final String time;
  final String image;
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isSaved=false;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [

        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 15),
          height: 176,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffD9D9D9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Text(
                textAlign: TextAlign.center,
                widget.dishName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff484848),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                textAlign: TextAlign.start,
                'Time',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffA9A9A9),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(widget.time),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: IconButton(
                      color: Colors.grey,
                      onPressed: () {
                        setState(() {
                          isSaved = !isSaved;
                        });
                      },
                      icon: ImageIcon(
                        size: 16,
                        color: isSaved
                            ? const Color(0xff129575)
                            : const Color(0xffA9A9A9),
                        const AssetImage('assets/icons/Inactive.png'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: -35,
          right: 8,
          child: Image.asset(widget.image),
        ),
        Positioned(
          top: 1,
          right: 18,
          child: Container(
            width: 45,
            height: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffFFE1B3),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFFAD30),
                  size: 15,
                ),
                Text(
                  widget.rate,
                  style: const TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
