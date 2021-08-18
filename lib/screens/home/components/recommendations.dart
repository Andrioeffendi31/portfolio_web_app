import 'package:flutter/material.dart';
import 'package:portofolio_web_app/models/Recommendation.dart';
import 'package:portofolio_web_app/screens/home/components/recommendation_item.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

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
          if(!Responsive.isMobileLarge(context))
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: Text(
              "Recommendations",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                color: secondaryColor,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          if(!Responsive.isMobileLarge(context))
          const SizedBox(height: defaultPadding / 2),
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