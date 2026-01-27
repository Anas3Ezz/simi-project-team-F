import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0x4DD9D9D9),
        suffixIconColor: Colors.grey,
        prefixIconColor: Colors.grey,
        suffixIcon: const Icon(Icons.mic_none_outlined),
        prefixIcon: const Icon(Icons.search_rounded),
        hint: const Text(
          "Search a Doctor",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
    );
  }
}
