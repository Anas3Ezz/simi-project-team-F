import 'package:flutter/cupertino.dart';
import 'package:my_project/models/doctor_model.dart';

import '../../gen/assets.gen.dart';
import 'doctor_card_widget.dart';

class DoctorsListBuilder extends StatelessWidget {
  const DoctorsListBuilder({super.key});
  static List<DoctorModel> doctors = [
    DoctorModel(
      name: "Wanitha",
      img: Assets.images.doctor1.path,
      rate: 5,
      specialist: "denteeth",
    ),
    DoctorModel(
      name: "Sara",
      img: Assets.images.doctor2.path,
      rate: 4,
      specialist: "Theripist",
    ),
    DoctorModel(
      name: "Pawan",
      img: Assets.images.doctor3.path,
      rate: 4,
      specialist: "denteeth",
    ),
    DoctorModel(
      name: "Udara",
      img: Assets.images.doctor4.path,
      rate: 4,
      specialist: "Theripist",
    ),
    DoctorModel(
      name: "Udara",
      img: Assets.images.doctor4.path,
      rate: 4,
      specialist: "Theripist",
    ),
    DoctorModel(
      name: "Pawan",
      img: Assets.images.doctor3.path,
      rate: 4,
      specialist: "denteeth",
    ),
    DoctorModel(
      name: "Wanitha",
      img: Assets.images.doctor1.path,
      rate: 5,
      specialist: "denteeth",
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
