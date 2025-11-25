import 'package:flutter/material.dart';
import 'package:phonics_app/widgets/custom_textfield.dart';
import 'package:phonics_app/widgets/password_textfield.dart';


class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome to W phonics!",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 16,
            children: [
              CustomTextField(label: "Email"),
              PassswordTextfield(),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AgreementWIdget(),
        ),

      ],
    );
  }
}

class AgreementWIdget extends StatelessWidget {
  const AgreementWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(value: false,side: BorderSide(color: Colors.white), onChanged: (value) {}),
            Text("SELECT ALL"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(value: false,side: BorderSide(color: Colors.white), onChanged: (value) {}),
                  Expanded(
                    child: Text("* I agree to the privacy policy and terms"),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    side: BorderSide(color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      "I want to receive email update from Jolly Learning",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}