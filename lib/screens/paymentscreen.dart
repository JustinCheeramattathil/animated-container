import 'package:animated/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: buttonColor,
      body: Center(
        child: Lottie.asset('assets/images/Animation.json'),
      ),
    );
  }
}
