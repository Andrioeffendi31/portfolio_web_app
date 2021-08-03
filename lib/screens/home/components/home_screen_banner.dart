import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello !",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "I'm Andrio (アンドリオ)",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold,
                    height: 1,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: defaultPadding / 2),
                CustomAnimatedText(),
                SizedBox(height: defaultPadding),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding),
                    backgroundColor: primaryColor,
                  ),
                  child: Text(
                    "EXPLORE NOW",
                    style: TextStyle(color: darkColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          CodedText(),
          SizedBox(width: defaultPadding / 2),
          Text(" I build "),
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                "java native mobile app",
                speed: Duration(milliseconds: 60),
              ),
              TypewriterAnimatedText(
                "responsive flutter web and mobile app",
                speed: Duration(milliseconds: 60),
              ),
              TypewriterAnimatedText(
                "2D and 3D games using Unity C#",
                speed: Duration(milliseconds: 60),
              ),
              TypewriterAnimatedText(
                "responsive web app using semantic UI & Codeigniter",
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(width: defaultPadding / 2),
          CodedText2(),
        ],
      ),
    );
  }
}

class CodedText extends StatelessWidget {
  const CodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "style",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}

class CodedText2 extends StatelessWidget {
  const CodedText2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "/style",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}