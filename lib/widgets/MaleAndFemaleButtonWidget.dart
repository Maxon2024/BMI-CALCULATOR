// ignore: file_names
import 'package:flutter/material.dart' show BuildContext, Card, Color, Column, EdgeInsets, Icon, IconData, MainAxisAlignment, Padding, SizedBox, StatelessWidget, Text, TextStyle, Widget;
// ignore: unused_import
import "WeightAndAgeWifget.dart";
class MaleAndFemaleButtonWidget extends StatelessWidget {
  const MaleAndFemaleButtonWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 180,
        child: Card(
          color: color, // Observer(builder: (_) {return Color.fromARGB(255, 62, 151, 196);}),
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
