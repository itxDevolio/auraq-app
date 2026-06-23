import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/adhkar_provider.dart';

class TasbeehScreen extends ConsumerWidget {
  final String dhikrId;
  TasbeehScreen({required this.dhikrId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(adhkarCountProvider(dhikrId));

    return Scaffold(
      body: GestureDetector(
        onTap: () => ref.read(adhkarCountProvider(dhikrId).notifier).increment(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tasbeeh Counter", style: TextStyle(fontSize: 24)),
              SizedBox(height: 50),
              // Circle UI jo wire/dane jaisa dikhe
              Container(
                width: 200, height: 200,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.brown.shade300),
                child: Center(child: Text("$count", style: TextStyle(fontSize: 40, color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}