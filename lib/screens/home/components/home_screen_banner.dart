import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobileLarge(context) ? 2.5 : 3,
      child: Padding(
        padding: Responsive.isMobileLarge(context) ? const EdgeInsets.symmetric(horizontal: 0.0) : const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                const Color(0xFF8A74FC),
                const Color(0xFFB48AFF),
              ],
              begin: const FractionalOffset(0.0, 1.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Image.asset(
              //   "assets/images/bg.jpeg",
              //   fit: BoxFit.cover,
              // ),
              Padding(
                padding: Responsive.isMobileLarge(context) ? const EdgeInsets.symmetric(horizontal: defaultPadding) : const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello !",
                      style: Responsive.isDesktop(context) ?
                      Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ) : Responsive.isMobileLarge(context) ?
                      Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ) :
                      Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                    ),
                    Text(
                      "I'm Andrio (アンドリオ)",
                      style: Responsive.isDesktop(context) ?
                      Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        height: 1,
                        color: Colors.white,
                      ) : Responsive.isMobileLarge(context) ?
                      Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1,
                      ) :
                      Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1,
                      )
                    ),
                    SizedBox(height: defaultPadding / 2),
                    CustomAnimatedText(),
                    if(!Responsive.isMobileLarge(context))
                      SizedBox(height: defaultPadding),
                    if(!Responsive.isMobileLarge(context))
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
        ),
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
      style: Responsive.isMobileLarge(context) ?
      Theme.of(context).textTheme.subtitle1!.copyWith(
        fontSize: 13,
      ) : Theme.of(context).textTheme.subtitle1!,
        maxLines: 1,
        child: Row(
        children: [
          if(!Responsive.isMobileLarge(context)) CodedText(),
          if(!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("I build "),
          Responsive.isMobile(context) ?
          Expanded(child: AnimatedBannerText()) : AnimatedBannerText(),
          if(!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if(!Responsive.isMobileLarge(context)) CodedText2(),
        ],
      ),
    );
  }
}

class AnimatedBannerText extends StatelessWidget {
  const AnimatedBannerText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
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
          "responsive web app using semantic UI",
          speed: Duration(milliseconds: 60),
        ),
      ],
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