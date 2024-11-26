import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                principal = double.tryParse(value) ??
                    0; // Convert to double for SI calculation
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Principal Amount',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.tryParse(value) ??
                    0; // Convert to double for SI calculation
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Rate of Interest (%)',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                time = double.tryParse(value) ??
                    0; // Convert to double for SI calculation
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Time (in years)',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Simple Interest: $interest',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Simple Interest formula: SI = (P * R * T) / 100
                    interest = (principal * rate * time) / 100;
                  });
                },
                child: const Text('Calculate Interest'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
