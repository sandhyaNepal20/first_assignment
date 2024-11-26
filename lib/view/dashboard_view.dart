import 'package:flutter/material.dart';
import 'package:first_assignment/view/arithmetic_view.dart';
import 'package:first_assignment/view/simple_interest.dart';
import 'package:first_assignment/view/area_circle.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Arithmetic Operations button
            _buildButton(
              context,
              'Arithmetic Operations',
              ArithmeticView(),
            ),
            // Simple Interest button
            _buildButton(
              context,
              'Simple Interest',
              SimpleInterestView(),
            ),
            // Area of Circle button
            _buildButton(
              context,
              'Area of Circle',
              CircleAreaView(),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build buttons to avoid code duplication
  ElevatedButton _buildButton(
      BuildContext context, String label, Widget destination) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Text(label),
    );
  }
}
