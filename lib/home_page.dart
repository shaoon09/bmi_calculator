import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String personHeightFeet = "0";
  String personHeightInches = "0";
  String personWeight = "0";
  String bmi = "0";

  //calculate bmi

  void calculateBMI() {
    double HeightinFeet = double.tryParse(personHeightFeet) ?? 0;
    double HeightinInchis = double.tryParse(personHeightInches) ?? 0;
    double weight = double.tryParse(personWeight) ?? 0;

    //height to meter
    double HeightinMeters = ((HeightinFeet * 12) + HeightinInchis) * 0.0254;

    if (HeightinMeters > 0) {
      double calculatedBmi = weight / (HeightinMeters * HeightinMeters);

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ResultPage(bmiResult: calculatedBmi.toStringAsFixed(3))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Feet',
                        hintText: 'Enter feet',
                      ),
                      onChanged: (value) {
                        personHeightFeet = value;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Inches',
                        hintText: 'Enter inches',
                      ),
                      onChanged: (value) {
                        personHeightInches = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Weight',
                  hintText: 'Enter your weight in KG',
                  prefixIcon: const Icon(Icons.monitor_weight),
                ),
                onChanged: (value) {
                  personWeight = value;
                },
              ),
            ),
            ElevatedButton(
                onPressed: calculateBMI,
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.00),
                    )))
          ],
        ),
      ),
    );
  }
}
