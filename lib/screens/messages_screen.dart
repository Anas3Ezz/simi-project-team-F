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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Clean look
        title: Text('Message', style: AppTextStyles.screenTitles),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarWidget(),
              SizedBox(height: 15),
              SeeAllRowWidget(titleRow: 'Active Now', seeAll: ''),
              SizedBox(height: 15),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return DoctorAvatar(
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // Update state and rebuild
                        });
                      },
                      image: 'assets/images/Rectangle 35.png',
                      isOnline: true,
                      isSelected: selectedIndex == index,
                    );
                  },
                ),
              ),
              SizedBox(height: 15),

              SeeAllRowWidget(titleRow: 'Messages', seeAll: ''),
            ],
          ),
        ),
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
