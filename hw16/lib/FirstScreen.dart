import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MyNavigationBar.dart';
import 'Styles/AppStyles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/bg1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        height: 339,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(0, 217, 217, 217),
              Color.fromARGB(38, 217, 217, 217),
              Color.fromARGB(217, 248, 248, 248),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Food Recipes',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Easy To Make Food',
                style: GoogleFonts.snippet(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 265),
              Container(
                height: 56,
                width: 237,
                decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Styles.orangeColor),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyNavigationBar(),
                      ),
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 77),
            ],
          ),
        ),
      ),
    );
  }
}
