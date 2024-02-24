import 'package:flutter/material.dart';
import 'package:voice_assistant/color_theme.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String descriptionText;

  const FeatureBox(
      {super.key,
      required this.color,
      required this.headerText,
      required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: const TextStyle(
                  fontFamily: 'Cera Pro',
                  fontWeight: FontWeight.bold,
                  color: ColorTheme.blackColor,
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              descriptionText,
              style: const TextStyle(fontFamily: 'Cera Pro'),
            )
          ],
        ),
      ),
    );
  }
}
