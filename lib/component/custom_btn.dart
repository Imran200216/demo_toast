import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback onTap;
  final double btnWidth;
  final String btnText;

  const CustomBtn({
    super.key,
    required this.onTap,
    required this.btnWidth,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: btnWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            btnText,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
