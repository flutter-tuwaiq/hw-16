import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Search',
        contentPadding: const EdgeInsets.only(left: 34.0,top: 6),
        hintStyle:
            TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.w600),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 26.0,right: 16),
          child: Icon(
            Icons.search,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}
