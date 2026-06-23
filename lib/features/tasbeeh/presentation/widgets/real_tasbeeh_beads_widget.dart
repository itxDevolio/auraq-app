import 'package:auraq/core/services/haptic_feedback.dart';
import 'package:flutter/material.dart';
import 'oval_tasbeeh_painter.dart';

class RealTasbeehBeadsWidget extends StatefulWidget {
  final int count;
  final VoidCallback onTap;

  const RealTasbeehBeadsWidget({super.key, required this.count, required this.onTap});

  @override
  State<RealTasbeehBeadsWidget> createState() => _RealTasbeehBeadsWidgetState();
}

class _RealTasbeehBeadsWidgetState extends State<RealTasbeehBeadsWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
  }

  @override
  void didUpdateWidget(RealTasbeehBeadsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.count != oldWidget.count) {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return GestureDetector(
      onTap: () {
        hapticFeedBack();
        widget.onTap();
      },
      behavior: HitTestBehavior.opaque,
      child: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return SizedBox(
              height: MediaQuery.of(context).size.width * 0.85,
              width: MediaQuery.of(context).size.width * 0.85,
              child: CustomPaint(
                painter: OvalTasbeehPainter(
                  count: widget.count, 
                  isDark: isDark,
                  animationValue: _animation.value,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
