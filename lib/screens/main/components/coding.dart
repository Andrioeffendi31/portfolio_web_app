import 'package:flutter/material.dart';
import 'package:portofolio_web_app/components/animated_progress_bar.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgress(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgress(
          percentage: 0.6,
          label: "Python",
        ),
        AnimatedLinearProgress(
          percentage: 0.8,
          label: "Java",
        ),
        AnimatedLinearProgress(
          percentage: 0.78,
          label: "C#",
        ),
        AnimatedLinearProgress(
          percentage: 0.9,
          label: "HTML",
        ),
        AnimatedLinearProgress(
          percentage: 0.9,
          label: "CSS",
        ),
        AnimatedLinearProgress(
          percentage: 0.7,
          label: "JavaScript",
        ),
      ],
    );
  }
}