import 'package:flutter/material.dart';
import 'package:portofolio_web_app/components/text_counter.dart';
import 'package:portofolio_web_app/responsive.dart';

import '../../../constants.dart';
import 'highlight_component.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isMobileLarge(context) ? const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding / 2) :
      const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
      child: Responsive.isMobileLarge(context) ?
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HighLightComponent(
                counter: TextCounter(
                  value: 420,
                  text: "+",
                ),
                label: "IG Followers",
              ),
              HighLightComponent(
                counter: TextCounter(
                  value: 160,
                  text: "+",
                ),
                label: "Illustrations",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HighLightComponent(
                counter: TextCounter(
                  value: 60,
                  text: "+",
                ),
                label: "UI/UX Design",
              ),
              HighLightComponent(
                counter: TextCounter(
                  value: 15,
                  text: "+",
                ),
                label: "Github Projects",
              ),
            ],
          ),
        ],
      ) :
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLightComponent(
            counter: TextCounter(
              value: 420,
              text: "+",
            ),
            label: "Followers",
          ),
          HighLightComponent(
            counter: TextCounter(
              value: 615,
              text: "+",
            ),
            label: "Illustrations",
          ),
          HighLightComponent(
            counter: TextCounter(
              value: 60,
              text: "+",
            ),
            label: "UI/UX Design",
          ),
          HighLightComponent(
            counter: TextCounter(
              value: 35,
              text: "+",
            ),
            label: "Projects",
          ),
        ],
      ),
    );
  }
}