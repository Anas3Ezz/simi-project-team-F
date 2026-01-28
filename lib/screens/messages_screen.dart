import 'package:flutter/material.dart';
import 'package:my_project/theme/text_styles.dart';
import 'package:my_project/widgets/Messages_screen_widgets/doctor_message_tile.dart';
import 'package:my_project/widgets/messages_screen_widgets/doctor_avatar.dart';
import 'package:my_project/widgets/search_bar_widget.dart';
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
                  SizedBox(
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
                  ),
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
}
