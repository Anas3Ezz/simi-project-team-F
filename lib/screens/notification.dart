import 'package:flutter/material.dart';
import 'package:my_project/widgets/custom_appbar_widget.dart';
import 'package:my_project/widgets/notification_screen_widgets/notification_tile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int notificationCount = 6;
  bool isMarked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Notification'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "New",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Mark All",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notificationCount,
                itemBuilder: (context, index) => const NotificationTile(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    notificationCount += 3;
                  });
                },
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: notificationCount > 6 ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
