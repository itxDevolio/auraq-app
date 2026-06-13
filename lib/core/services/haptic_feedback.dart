import 'package:flutter/services.dart';

Future<void> hapticFeedBack() async {
  await HapticFeedback.lightImpact();
}
