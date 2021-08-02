import 'package:flutter/material.dart';
import 'package:portofolio_web_app/components/animated_progress_bar.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressBar(
                percentage: 0.75,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressBar(
                percentage: 0.8,
                label: "Firebase",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressBar(
                percentage: 0.85,
                label: "Unity",
              ),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressBar(
                percentage: 0.8,
                label: "Adobe\nPremiere",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressBar(
                percentage: 0.75,
                label: "Adobe\nAfter Effect",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressBar(
                percentage: 0.9,
                label: "Adobe\nIllustrator",
              ),
            ),
          ],
        )
      ],
    );
  }
}