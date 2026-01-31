import 'package:flutter/material.dart';
import 'package:my_project/theme/text_styles.dart';
import 'package:my_project/widgets/Messages_screen_widgets/doctor_message_tile.dart';
import 'package:my_project/widgets/messages_screen_widgets/active_doctors_list_widget.dart';
import 'package:my_project/widgets/search_bar_widget.dart';
import 'package:my_project/widgets/section_title_widget.dart';

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
                    child: SectionTitle(title: 'Active Now', seeAll: ''),
                  ),
                  const SizedBox(height: 12),
                  ActiveDoctorsList(
                    selectedIndex: selectedIndex,
                    onDoctorSelected: (index) {
                      setState(() => selectedIndex = index);
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: SectionTitle(title: 'Messages', seeAll: ''),
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
