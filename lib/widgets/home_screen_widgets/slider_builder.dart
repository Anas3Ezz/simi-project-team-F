import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_project/widgets/home_screen_widgets/slider_item.dart';

class SliderBuilder extends StatefulWidget {
  const SliderBuilder({super.key});

  @override
  State<SliderBuilder> createState() => _SliderBuilderState();
}

class _SliderBuilderState extends State<SliderBuilder> {
  List<SliderItem> items = [
    SliderItem(),
    SliderItem(),
    SliderItem(),
    SliderItem(),
  ];

  int _selectdIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 170,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
            onPageChanged: (index, i) {
              setState(() {
                _selectdIndex = index;
              });
            },
          ),
          items: items.map((i) {
            return i;
          }).toList(),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(items.length, (i) {
            return Row(
              children: [
                CircleAvatar(
                  radius: _selectdIndex == i ? 7 : 5,
                  backgroundColor: _selectdIndex == i
                      ? Color(0xff0B8FAC)
                      : Color(0x66C4C4B2),
                ),
                SizedBox(width: 7),
              ],
            );
          }),
        ),
      ],
    );
  }
}
