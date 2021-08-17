import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';


class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "© 2021 Andrio Effendi. All Rights Reserved",
            style: Responsive.isMobileLarge(context) ?
            Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 16,
              color: secondaryColor,
              fontWeight: FontWeight.w600,
            ) :
            Theme.of(context).textTheme.headline6!.copyWith(
              color: secondaryColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        SizedBox(height: 50,)
      ],
    );
  }
}