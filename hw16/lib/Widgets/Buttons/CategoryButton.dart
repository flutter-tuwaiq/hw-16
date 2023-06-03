import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/AppStyles.dart';

// ignore: must_be_immutable
class CategoryButton extends StatefulWidget {
  final String categoryName;

  CategoryButton({super.key, required this.categoryName});
  late String category = categoryName;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 104,
      decoration: BoxDecoration(
        color: Styles.orangeColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
              side: BorderSide(
                color: Styles.orangeColor,
              ),
            ),
          ),
          backgroundColor: (selected == false)
              ? MaterialStateProperty.all(Styles.orangeColor)
              : MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Text(
          widget.category,
          style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: (selected == true) ? Styles.orangeColor : Colors.white),
        ),
      ),
    );
  }
}
