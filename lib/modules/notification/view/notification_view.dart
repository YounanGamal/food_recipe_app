import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  String filter = 'All';

  Widget build(BuildContext context) {
    List<String> filters = [
      'All',
      'Read',
      'Unread',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notifications'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    onPressed: () {
                      filter = filters[0];
                      setState(() {});
                    },
                    elevation: 0,
                    color: filter == 'All'
                        ? const Color(0xff129575)
                        : Colors.transparent,
                    child: Text(
                      'All',
                      style: TextStyle(
                        color:
                            filter == 'All' ? Colors.white : const Color(0xff129575),
                      ),
                    )),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    setState(() {
                      filter = filters[1];
                    });
                  },
                  elevation: 0,
                  color:
                      filter == 'Read' ? const Color(0xff129575) : Colors.transparent,
                  child: Text(
                    'Read',
                    style: TextStyle(
                      color:
                          filter == 'Read' ? Colors.white : const Color(0xff129575),
                    ),
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    setState(() {
                      filter = filters[2];
                    });
                  },
                  elevation: 0,
                  color: filter == 'Unread'
                      ? const Color(0xff129575)
                      : Colors.transparent,
                  child: Text(
                    'Unread',
                    style: TextStyle(
                      color:
                          filter == 'Unread' ? Colors.white : const Color(0xff129575),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Today'),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 97,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffD9D9D9).withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New Recipe Alert!',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffFFE1B3),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/icons/document-text.png'),
                          size: 4,
                          color: Color(0xffFF9C00),
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'Lorem Ipsum tempor incididunt ut labore \net dolore,in voluptate velit esse cillum',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                  Spacer(),
                  const Text(
                    '10 mins ago',
                    style: TextStyle(
                      fontSize: 7,
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
