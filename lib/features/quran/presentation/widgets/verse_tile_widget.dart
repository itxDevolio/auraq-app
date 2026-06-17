import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Add this package import
import '../../domain/entities/verse.dart';

class VerseTileWidget extends StatelessWidget {
  final Verse verse;
  final bool isHighlighted;
  final VoidCallback onTap;

  const VerseTileWidget({
    super.key,
    required this.verse,
    required this.isHighlighted,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isHighlighted ? Colors.teal.withOpacity(0.12) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: isHighlighted ? Colors.teal : Colors.grey.withOpacity(0.15),
          width: isHighlighted ? 1.5 : 1,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.teal.withOpacity(0.1),
                  child: Text(
                    '${verse.verseNumber}',
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Surah ${verse.surahNumber}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              verse.textArabic,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: GoogleFonts.amiriQuran(
                fontSize: 24,
                height: 2.0,
                color: const Color(0xFF2C3E50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
