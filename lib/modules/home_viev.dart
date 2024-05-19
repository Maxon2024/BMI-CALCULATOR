// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/MaleAndFemaleButtonWidget.dart';
import 'package:flutter_application_2/widgets/WeightAndAgeWifget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _currentSliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaleAndFemaleButtonWidget(
                    icon: Icons.male,
                    text: 'Male',
                  ),
                ),
                Expanded(
                  child: MaleAndFemaleButtonWidget(
                    icon: Icons.female,
                    text: 'Female',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Card(
                color: const Color.fromARGB(255, 62, 151, 196),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _currentSliderValue.truncate().toString(),
                          style: const TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('cm'),
                      ],
                    ),
                    Slider(
                      value: _currentSliderValue,
                      min: 50,
                      max: 220,
                      divisions: 100,
                      activeColor: Colors.red,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Row(
            children: [
              Expanded(
                  child: WeightAndAgeButtonWidget(
                text: 'Wight',
                santext: 60,
              )),
              Expanded(
                  child: WeightAndAgeButtonWidget(
                text: 'Age',
                santext: 28,
              )),
            ],
          ),
          const SizedBox(height: 15),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Center(
                  child: Text(
                'CALCULATER',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
