import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/AppStyles.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({super.key});

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 113,
      decoration: BoxDecoration(
        color: Styles.orangeColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17.5),
              side: BorderSide(
                color: Styles.orangeColor,
              ),
            ),
          ),
          backgroundColor: (clicked == true)
              ? MaterialStateProperty.all(Styles.orangeColor)
              : MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          setState(() {
            clicked = !clicked;
          });
        },
        child: Row(
          children: [
            (clicked == true)
                ? const Icon(Icons.add, color: Colors.white)
                : const SizedBox(width: 0),
            const SizedBox(width: 5),
            Text(
              (clicked == true) ? "Follow" : "Unfollow",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color:
                      (clicked == false) ? Styles.orangeColor : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
