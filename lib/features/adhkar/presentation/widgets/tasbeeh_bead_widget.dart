import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildTasbeehCounter(int count, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Colors.brown[300]!, Colors.brown[600]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(5, 5)),
        ],
      ),
      child: Center(
        child: Text(
          "$count",
          style: GoogleFonts.poppins(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}