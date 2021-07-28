import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/PhotoProfile-01.jpg'),
            ),
            Spacer(),
            Text(
              "Andrio Effendi",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
                "Mobile Developer & Founder of \n Cheap Me",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                )
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}