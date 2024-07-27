import'package:flutter/material.dart';
import 'package:task4/screens/bmiCalculator.dart';
import 'package:task4/screens/calculatorScreen.dart';
import 'package:task4/screens/loginScreen.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> screens = [CalculatorScreen(),LoginScreen(),BmiCalculator()];

  int newValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: newValue,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.red,
          backgroundColor: Colors.black,
          onTap:(int x){
            setState(() {
              newValue = x;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculator"),
            BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label: "Bmi Calculator")
          ],
        ),
        body: screens[newValue],
      ),
    );
  }
}
