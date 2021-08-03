import 'package:flutter/material.dart';
import 'package:portofolio_web_app/components/text_counter.dart';

import '../../../constants.dart';
import 'highlight_component.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
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
          HighLightComponent(
            counter: TextCounter(
              value: 20,
              text: "+",
            ),
            label: "Github Projects",
          ),
        ],
      ),
    );
  }
}