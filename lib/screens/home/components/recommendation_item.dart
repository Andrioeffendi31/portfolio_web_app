import 'package:flutter/material.dart';
import 'package:portofolio_web_app/models/Recommendation.dart';
import 'package:portofolio_web_app/responsive.dart';

import '../../../constants.dart';

class RecommendationItem extends StatelessWidget {
  const RecommendationItem({
    Key? key, required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Container(
        width: Responsive.isMobileLarge(context) ? 320 : 400,
        padding: const EdgeInsets.all(defaultPadding*2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: secondaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(recommendation.source!),
            const SizedBox(height: defaultPadding),
            Text(
              recommendation.text!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}