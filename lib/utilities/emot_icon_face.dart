import 'package:flutter/material.dart';

class EmotIconFace extends StatelessWidget {
  final String icon;
  const EmotIconFace({super.key,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(icon,style: const TextStyle(fontSize: 28),),
      ),
    );
  }
}
