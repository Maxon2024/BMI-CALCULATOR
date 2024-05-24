// ignore_for_file: file_names

import 'package:flutter/material.dart';

class WeightAndAgeButtonWidget extends StatelessWidget {
  const WeightAndAgeButtonWidget({
    super.key,
    required this.text,
    required this.santext,
    required this.onPressedRemove,
    this.onPressedAdd,
  });

  final String text;
  final int santext;
  final void Function()? onPressedRemove;
  final void Function()? onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      //width: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Card(
          color: const Color.fromARGB(255, 62, 151, 196),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 20, color: Colors.white38),
              ),
              Text(
                santext.toString(),
                style:
                    const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: onPressedRemove, // () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero, shape: const CircleBorder()),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.remove,
                        size: 36,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: onPressedAdd,
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero, shape: const CircleBorder()),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.add,
                        size: 36,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
