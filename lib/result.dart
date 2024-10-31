import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  const ResultPage({super.key, required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Result",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your BMI is",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[800],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Keep track of your BMI for a healthy lifestyle!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
