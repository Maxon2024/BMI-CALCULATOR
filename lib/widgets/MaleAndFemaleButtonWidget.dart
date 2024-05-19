import 'package:flutter/material.dart';

class MaleAndFemaleButtonWidget extends StatelessWidget {
  const MaleAndFemaleButtonWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 180,
        child: Card(
          color: const Color.fromARGB(255, 62, 151, 196),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon, // Icons.male,
                size: 85,
              ),
              Text(
                text, //'Male',
                style: const TextStyle(fontSize: 28),
              )
            ],
          ),
        ),
      ),
    );
  }
}
