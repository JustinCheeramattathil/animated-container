import 'package:animated/screens/paymentscreen.dart';
import 'package:animated/services/animation_service.dart';
import 'package:animated/utils/colors.dart';
import 'package:animated/widgets/animated_home_card.dart';
import 'package:animated/widgets/details_card.dart';
import 'package:animated/widgets/home_card.dart';
import 'package:animated/widgets/payment_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const PaymentScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Provider.of<AnimationProvider>(context, listen: false).toggleVisibility();
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: GoogleFonts.poppins(
            color: animatedCardColor,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.30,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Center(child: AnimatedHomeCard()),
                    const Center(child: HomeCard()),
                  ],
                ),
              ),
              const DetailsCard(),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  child: const PaymentButton())
            ],
          ),
        ),
      ),
    );
  }
}
