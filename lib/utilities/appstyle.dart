import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


TextStyle appstyle(double size, Color color, FontWeight fw, {height = 1.0}) {
  return GoogleFonts.poppins(
    height: height,
    fontSize: size,
    color: color,
    fontWeight: fw,
  );
}