import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';

class SelectionSlotPicker extends StatefulWidget {
  final List<String> items;
  final String initialSelected;

  const SelectionSlotPicker({
    super.key,
    required this.items,
    required this.initialSelected,
  });

  @override
  State<SelectionSlotPicker> createState() => _SelectionSlotPickerState();
}

class _SelectionSlotPickerState extends State<SelectionSlotPicker> {
  late String _currentSelection;

  @override
  void initState() {
    super.initState();
    _currentSelection = widget.initialSelected;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = widget.items[index];
          final bool isSelected = item == _currentSelection;

          return GestureDetector(
            onTap: () => setState(() => _currentSelection = item),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.primaryTeal
                    : const Color(0xFFF5F8FA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
