import 'package:flutter/material.dart';

class CircleAreaView extends StatefulWidget {
  const CircleAreaView({super.key});

  @override
  State<CircleAreaView> createState() => _CircleAreaViewState();
}

class _CircleAreaViewState extends State<CircleAreaView> {
  double radius = 0;
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Area Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.tryParse(value) ??
                    0; // Convert input to double for calculation
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Radius',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Area of Circle: $area',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    area =
                        3.14159 * radius * radius; // Calculate area using πr²
                  });
                },
                child: const Text('Calculate Area'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
