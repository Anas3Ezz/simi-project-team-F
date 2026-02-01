import 'package:flutter/cupertino.dart';
import 'package:my_project/models/doctor_model.dart';

import 'doctor_card_widget.dart';

class DoctorsListBuilder extends StatelessWidget {
  DoctorsListBuilder({super.key});
  List<DoctorModel> doctors = [
    const DoctorModel(
      name: "Wanitha",
      img: "assets/images/doctor1.png",
      rate: 5,
      specialist: "denteeth",
    ),
    const DoctorModel(
      name: "Sara",
      img: "assets/images/doctor2.png",
      rate: 4,
      specialist: "Theripist",
    ),
    const DoctorModel(
      name: "Pawan",
      img: "assets/images/doctor3.png",
      rate: 4,
      specialist: "denteeth",
    ),
    const DoctorModel(
      name: "Udara",
      img: "assets/images/doctor4.png",
      rate: 4,
      specialist: "Theripist",
    ),
    const DoctorModel(
      name: "Udara",
      img: "assets/images/doctor4.png",
      rate: 4,
      specialist: "Theripist",
    ),
    const DoctorModel(
      name: "Pawan",
      img: "assets/images/doctor3.png",
      rate: 4,
      specialist: "denteeth",
    ),
    const DoctorModel(
      name: "Wanitha",
      img: "assets/images/doctor1.png",
      rate: 5,
      specialist: "denteeth.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, i) => DoctorCardWidget(doctor: doctors[i]),
      separatorBuilder: (context, i) {
        return const SizedBox(height: 15);
      },
      itemCount: doctors.length,
    );
  }
}
