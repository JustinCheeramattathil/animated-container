import 'package:animated/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: size.width * 0.91,
          height: size.height * 0.25,
          decoration: BoxDecoration(
              color: cardColor,
              border: Border.all(color: buttonColor, width: 2),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: buttonColor,
                radius: 30,
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                'Add new Card',
                style: GoogleFonts.poppins(fontSize: 15, color: buttonColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
