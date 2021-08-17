import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_web_app/constants.dart';
import 'package:portofolio_web_app/models/DesignBanner.dart';

import '../../../responsive.dart';

class ArtBanner extends StatelessWidget {
  const ArtBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: defaultPadding),
        Text(
          "Art & Design.",
          style: GoogleFonts.nunito(
            color: darkColor,
            fontSize: Responsive.isMobileLarge(context) ? 32 : 48,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: defaultPadding),
        AspectRatio(
          aspectRatio: Responsive.isMobileLarge(context) ? 2.5 : 3,
          child: Swiper(
            itemCount: banners.length,
            layout: SwiperLayout.DEFAULT,
            autoplayDelay: 3000,
            autoplay: true,
            loop: true,
            pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  activeColor: primaryColor,
                  color: secondaryColor,
                  activeSize: 16,
                  space: 8
              ),
            ),
            viewportFraction: 1,
            scale: 0.7,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: Responsive.isMobileLarge(context) ? 2.5 : 3,
                          child: Padding(
                            padding: Responsive.isMobileLarge(context) ? const EdgeInsets.symmetric(horizontal: 0.0) : const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(image: AssetImage(banners[index].url), fit: BoxFit.cover),
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
                                  Padding(
                                    padding: Responsive.isMobileLarge(context) ? const EdgeInsets.symmetric(horizontal: defaultPadding) : const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            banners[index].title,
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
                                        SizedBox(height: defaultPadding / 2),
                                        Text(
                                            banners[index].description,
                                            style: Responsive.isDesktop(context) ?
                                            Theme.of(context).textTheme.headline5!.copyWith(
                                              fontWeight: FontWeight.normal,
                                              height: 1,
                                              color: Colors.white,
                                            ) : Responsive.isMobileLarge(context) ?
                                            Theme.of(context).textTheme.headline4!.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              height: 1,
                                            ) :
                                            Theme.of(context).textTheme.headline4!.copyWith(
                                              fontSize: 22,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              height: 1,
                                            )
                                        ),
                                        SizedBox(height: defaultPadding / 2),
                                        if(!Responsive.isMobileLarge(context))
                                          SizedBox(height: defaultPadding),
                                        if(!Responsive.isMobileLarge(context))
                                          if(banners[index].pos == "1")
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                                      EdgeInsets.symmetric(
                                                          horizontal: defaultPadding * 2,
                                                          vertical: defaultPadding
                                                      )
                                                  ),
                                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      )
                                                  )
                                              ),
                                              child: Text(
                                                "READ MORE",
                                                style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                        if(!Responsive.isMobileLarge(context))
                                          if(banners[index].pos == "2")
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                                      EdgeInsets.symmetric(
                                                          horizontal: defaultPadding * 2,
                                                          vertical: defaultPadding
                                                      )
                                                  ),
                                                  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      )
                                                  )
                                              ),
                                              child: Text(
                                                "READ MORE",
                                                style: TextStyle(color: darkColor, fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                        if(!Responsive.isMobileLarge(context))
                                          if(banners[index].pos == "3")
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                                      EdgeInsets.symmetric(
                                                          horizontal: defaultPadding * 2,
                                                          vertical: defaultPadding
                                                      )
                                                  ),
                                                  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      )
                                                  )
                                              ),
                                              child: Text(
                                                "READ MORE",
                                                style: TextStyle(color: darkColor, fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}