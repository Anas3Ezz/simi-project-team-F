import 'package:flutter/material.dart';
import 'package:my_project/theme/text_styles.dart';
import 'package:my_project/widgets/search_par.dart';
import 'package:my_project/widgets/see_all_widget.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              backgroundColor: Colors.white,
              title: Text('Message', style: AppTextStyles.screenTitles),
              centerTitle: true,
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              sliver: SliverToBoxAdapter(child: SearchBarWidget()),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: SeeAllRowWidget(titleRow: 'Active Now', seeAll: ''),
                  ),
                  const SizedBox(height: 12),
                  _buildHorizontalList(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: SeeAllRowWidget(titleRow: 'Messages', seeAll: ''),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return DoctorMessageTile(
                    name: 'Dr. Expert $index',
                    message: 'Performance is much better now!',
                    image: 'assets/images/Rectangle 35.png',
                    time: '12:50',
                    unreadCount: index == 0 ? 2 : 0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalList() {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return DoctorAvatar(
            image: 'assets/images/Rectangle 35.png',
            isOnline: true,
            isSelected: selectedIndex == index,
            onTap: () => setState(() => selectedIndex = index),
          );
        },
      ),
    );
  }
}

class DoctorMessageTile extends StatelessWidget {
  final String name;
  final String message;
  final String image;
  final String time;
  final int? unreadCount;

  const DoctorMessageTile({
    super.key,
    required this.name,
    required this.message,
    required this.image,
    required this.time,
    this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F9F9), // Light mint background from image
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage(image)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  message,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 8),
              if (unreadCount != null && unreadCount! > 0)
                CircleAvatar(
                  radius: 10,
                  backgroundColor: const Color(
                    0xFF1B9AAA,
                  ), // Teal color from image
                  child: Text(
                    unreadCount.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class DoctorAvatar extends StatelessWidget {
  final String image;
  final bool isOnline;
  final bool isSelected;
  final VoidCallback onTap; // Add this callback

  const DoctorAvatar({
    super.key,
    required this.image,
    required this.onTap, // Make it required
    this.isOnline = false,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger the selection logic
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Colors.blue : Colors.transparent,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  image,
                ), // Using AssetImage directly is cleaner
              ),
            ),
            if (isOnline)
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
