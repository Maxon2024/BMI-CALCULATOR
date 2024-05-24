// import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/MaleAndFemaleButtonWidget.dart';
import 'package:flutter_application_2/widgets/WeightAndAgeWifget.dart';

class HomeViev extends StatefulWidget {
  const HomeViev({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeVievState createState() => _HomeVievState();
}

class _HomeVievState extends State<HomeViev> {
  double height = 60;

  bool isSelect = false;
  int weightSan = 60;
  int ageSan = 18;

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                      isSelect = true;
                    },
                    child: MaleAndFemaleButtonWidget(
                      icon: Icons.male,
                      text: 'Бала',
                      color: isSelect
                          ? Colors.red
                          : const Color.fromARGB(255, 62, 151, 196),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelect = false;
                      });
                    },
                    child: MaleAndFemaleButtonWidget(
                        icon: Icons.female,
                        text: 'Кыз',
                        color: isSelect
                            ? const Color.fromARGB(255, 62, 151, 196)
                            : Colors.red),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
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
                      'Бойунун узундугу',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white70,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.truncate().toString(),
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('сантиметр'),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 0,
                      max: 220,
                      divisions: 100,
                      activeColor: Colors.red,
                      label: height.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: WeightAndAgeButtonWidget(
                  text: 'Салмагы',
                  santext: weightSan,
                  onPressedRemove: () {
                    setState(() {});
                    weightSan--;
                  },
                  onPressedAdd: () {
                    setState(() {});
                    weightSan++;
                  },
                ),
              ),
              Expanded(
                child: WeightAndAgeButtonWidget(
                  text: 'Жашы',
                  santext: ageSan,
                  onPressedRemove: () {
                    setState(() {});
                    ageSan--;
                  },
                  onPressedAdd: () {
                    setState(() {});
                    ageSan++;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Expanded(
            child: InkWell(
              onTap: () {
                final result = weightSan / pow(100 / height, 2);
                if (result < 18.5) {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      content: const Text(
                        'Сенде ашыкча салмак коп экен озуно кара спорт менен машыгып арыкта',
                        style: TextStyle(fontSize: 30),
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('<='),
                        ),
                      ],
                    ),
                  );
                } else if (result >= 18.5 && result <= 24.9) {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      content: const Text(
                        'Сенин салмагын жакшы. Молодец.',
                        style: TextStyle(fontSize: 30),
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('<='),
                        ),
                      ],
                    ),
                  );
                } else if (result > 24.9) {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      content: const Text(
                        'Сенин салмагын аз экен семир жана кобуроок тамак же',
                        style: TextStyle(fontSize: 30),
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('<='),
                        )
                      ],
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      content: const Text(
                        'Маалымат алууда катачылыктар бар',
                        style: TextStyle(fontSize: 30),
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('<='),
                        )
                      ],
                    ),
                  );
                }
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  if (result < 18.5) {
//             showMyDialog(
//               context: context,
//               text: 'Сенин салмагын аз экен. Кобуроок же',
//             );
//           } else if (result >= 18.5 && result <= 24.9) {
//             AlertDialog(
//               context: context,
//               text: 'Сенин салмагын жакшы. Молодец.',
//             );
//           } else if (result > 24.9) {
//             showMyDialog(
//               context: context,
//               text: 'Сенде ашыкча салмак коп. Озуно жакшы кара. Спорт менен алектен',
//             );
//           } else {
//             showMyDialog(
//               context: context,
//               text: 'Маалымат алууда катачылыктар бар',
//             );
//           }
//         },