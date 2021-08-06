import 'package:flutter/material.dart';
import 'package:portofolio_web_app/models/Recommendation.dart';
import 'package:portofolio_web_app/screens/home/components/recommendation_item.dart';

import '../../../constants.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: Text(
              "Recommendations",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                color: secondaryColor,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demo_recommendations.length,
                    (index) => RecommendationItem(
                      recommendation: demo_recommendations[index],
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}