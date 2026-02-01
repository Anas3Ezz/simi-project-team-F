import 'package:flutter/material.dart';
import 'package:my_project/widgets/appointment_details_screen_widget/appointment_details_screen_header.dart';
import 'package:my_project/widgets/appointment_details_screen_widget/doctot_info_details.dart';
import 'package:my_project/widgets/appointment_details_screen_widget/selection_slot_picker.dart';
import 'package:my_project/widgets/custom_appbar_widget.dart';
import 'package:my_project/widgets/primary_button_widget.dart';
import 'package:my_project/widgets/section_title_widget.dart';

class AppointmentDetailesScreen extends StatelessWidget {
  const AppointmentDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Appointments'),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppointmentDetailsHeader(),
                    const SizedBox(height: 25),
                    const DoctorInfoDetails(),
                    const SizedBox(height: 25),
                    const SectionTitle(title: 'Working Hours'),
                    const SizedBox(height: 15),
                    const SelectionSlotPicker(
                      items: ['10.00 AM', '11.00 AM', '12.00 PM', '01.00 PM'],
                      initialSelected: '11.00 AM',
                    ),
                    const SizedBox(height: 25),
                    const SectionTitle(title: 'Date'),
                    const SizedBox(height: 15),
                    const SelectionSlotPicker(
                      items: ['Sun 4', 'Mon 5', 'Tue 6', 'Wed 7'],
                      initialSelected: 'Sun 4',
                    ),

                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      child: PrimaryButton(
                        title: 'Book an Appointment',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
