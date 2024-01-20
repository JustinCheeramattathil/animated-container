import 'package:animated/services/animation_service.dart';
import 'package:animated/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedHomeCard extends StatelessWidget {
  AnimatedHomeCard({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Consumer<AnimationProvider>(
        builder: (context, model, child) {
          return AnimatedOpacity(
            opacity: model.isVisible ? 0.0 : 1.0,
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: size.width * 0.91,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                color: animatedCardColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(13),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'credit card number',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.white38),
                            ),
                            Text(
                              '4100 1234 5678 9010',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'securirty code',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.white38),
                            ),
                            Text(
                              '123',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'card holder',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.white38),
                            ),
                            Text(
                              'vera Huang',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Exp Date',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.white38),
                            ),
                            Text(
                              '11/22',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Zip Code',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.white38),
                            ),
                            Text(
                              '03092',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                            height: 30,
                            width: 70,
                            child: Image.asset('assets/images/vis-remove.png'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
