import 'package:flutter/material.dart';
import 'package:phonics_app/pages/home_page.dart';
import 'package:phonics_app/widgets/signup_section.dart';
import 'package:phonics_app/widgets/user_selection.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/mouse.png", width: 250, height: 250),
            if (currentPageIndex == 0) SignupSection(),
            if (currentPageIndex == 1)
              TypeOfUserSelectionSection(
                key: Key("grid1"),
                heading: "Are you a guardian or a teacher",
                options: ["Guardian", "Tutor", "Teacher", "Other"],
                onSelect: (selectedItems) => print(selectedItems),
              ),
            if (currentPageIndex == 2)
              TypeOfUserSelectionSection(
                key: Key("grid2"),
                heading: "Select your child's age",
                options: ['0-3', '4-5', '6-8', '8 +'],
                onSelect: (selectedItems) => print(selectedItems),
              ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(16),
                      backgroundColor: currentPageIndex == 2 ? Colors.blue : Colors.white,
                      foregroundColor: currentPageIndex == 2 ? Colors.white : Colors.black,
                    ),
                    onPressed: () {
                      if (currentPageIndex == 2) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                        builder: (context) => const HomePage(),
                        ),
                      );
                      } else {
                      setState(() {
                        currentPageIndex++;
                      });
                      }
                    },
                    child: Text(currentPageIndex == 2 ? "Start!" : "Next"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
