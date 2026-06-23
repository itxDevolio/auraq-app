import 'dart:math';
import 'package:auraq/core/app_colors.dart';
import 'package:flutter/material.dart';

class OvalTasbeehPainter extends CustomPainter {
  final int count;
  final int totalBeads = 33;
  final bool isDark;
  final double animationValue;

  OvalTasbeehPainter({
    required this.count, 
    required this.isDark,
    required this.animationValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    
    // Organic "Gravity" Oval: Slightly wider at the bottom to look like it's hanging
    double radiusX = size.width / 2.3;
    double radiusYBase = size.height / 2.1;

    // 1. Draw the Silk Thread (Simple & Clean)
    Paint wirePaint = Paint()
      ..color = isDark ? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.08)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;
    
    Path wirePath = Path();
    for (int i = 0; i <= 360; i++) {
      double radians = i * pi / 180;
      // Gravity effect: increase radiusY as we go towards the bottom (pi/2)
      double gravityEffect = 1.0 + (0.05 * sin(radians)); 
      double x = centerX + radiusX * cos(radians - pi / 2);
      double y = centerY + (radiusYBase * gravityEffect) * sin(radians - pi / 2);
      
      if (i == 0) {
        wirePath.moveTo(x, y);
      } else {
        wirePath.lineTo(x, y);
      }
    }
    canvas.drawPath(wirePath, wirePaint);

    // 2. Draw beads with organic rotation
    double rotationOffset = (count % totalBeads) * (2 * pi / totalBeads);

    for (int i = 0; i < totalBeads; i++) {
      double angle = (i * 2 * pi / totalBeads) - pi / 2 - rotationOffset;
      
      // Apply same gravity effect to bead positions
      double gravityEffect = 1.0 + (0.05 * sin(angle + pi/2));
      double x = centerX + radiusX * cos(angle);
      double y = centerY + (radiusYBase * gravityEffect) * sin(angle);

      bool isTarget = i == 0; 
      double baseRadius = 11.0;
      double beadRadius = isTarget ? (baseRadius + 3 + (animationValue * 2)) : baseRadius;
      
      // --- SUBTLE DEPTH SHADOW ---
      canvas.drawCircle(
        Offset(x + 1.5, y + 2),
        beadRadius,
        Paint()
          ..color = Colors.black.withOpacity(0.2)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
      );

      // --- CLEAN NATURAL WOOD/POLISHED LOOK ---
      // No extra colors (green/yellow removed), just natural tones
      Paint beadPaint = Paint()
        ..shader = RadialGradient(
          center: const Alignment(-0.3, -0.3),
          colors: isTarget 
              ? [AppColors.lightTeal, AppColors.darkTeal] // Keep primary brand color for active
              : (isDark 
                  ? [const Color(0xFF5D4037), const Color(0xFF3E2723), const Color(0xFF2D1B18)]
                  : [const Color(0xFF8D6E63), const Color(0xFF5D4037), const Color(0xFF4E342E)]),
        ).createShader(Rect.fromCircle(center: Offset(x, y), radius: beadRadius));

      canvas.drawCircle(Offset(x, y), beadRadius, beadPaint);

      // Sharp specular highlight for "Polished" feel
      Paint shinePaint = Paint()
        ..color = Colors.white.withOpacity(0.3)
        ..style = PaintingStyle.fill;
      canvas.drawCircle(Offset(x - beadRadius * 0.4, y - beadRadius * 0.4), beadRadius * 0.15, shinePaint);
    }

    // 3. Simple Minimal Tassel
    _drawMinimalTassel(canvas, centerX, centerY - radiusYBase, isDark);
  }

  void _drawMinimalTassel(Canvas canvas, double x, double y, bool isDark) {
    Paint tasselPaint = Paint()
      ..color = isDark ? Colors.white24 : Colors.black12
      ..style = PaintingStyle.fill;
    
    // Elegant small Imame
    canvas.drawRRect(
      RRect.fromLTRBR(x - 4, y - 25, x + 4, y + 5, const Radius.circular(2)),
      tasselPaint..color = (isDark ? Colors.white30 : Colors.black26),
    );

    // Simple thread tail
    Paint threadPaint = Paint()
      ..color = AppColors.primaryTeal.withOpacity(0.5)
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;
      
    canvas.drawLine(Offset(x, y - 25), Offset(x, y - 45), threadPaint);
  }

  @override
  bool shouldRepaint(covariant OvalTasbeehPainter oldDelegate) => 
      oldDelegate.count != count || 
      oldDelegate.isDark != isDark || 
      oldDelegate.animationValue != animationValue;
}
