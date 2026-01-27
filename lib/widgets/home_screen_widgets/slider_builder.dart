import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_project/widgets/home_screen_widgets/slider_item.dart';

class SliderBuilder extends StatelessWidget {
  SliderBuilder({super.key});
  List<SliderItem> items = [SliderItem(), SliderItem()];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 170,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
      ),
      items: items.map((i) {
        return i;
      }).toList(),
    );
  }
}
