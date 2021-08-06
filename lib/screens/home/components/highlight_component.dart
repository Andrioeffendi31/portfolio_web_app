import 'package:flutter/material.dart';
import 'package:portofolio_web_app/responsive.dart';

import '../../../constants.dart';

class HighLightComponent extends StatelessWidget {
  const HighLightComponent({
    Key? key, required this.counter, this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          counter,
          SizedBox(width: defaultPadding / 2),
          Text(label!, style: Responsive.isMobileLarge(context) ?
          Theme.of(context).textTheme.subtitle2!.copyWith(color: secondaryColor, fontWeight: FontWeight.w800, fontSize: 14) :
          Theme.of(context).textTheme.subtitle1!.copyWith(color: secondaryColor, fontWeight: FontWeight.w800)
          ),
      ],
    );
  }
}