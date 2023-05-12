import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/screens/home/controller/home_controller.dart';
import 'package:travel_application/screens/locations/location_screen.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    final provider = Provider.of<HomeController>(context, listen: false);

    return FutureBuilder(
      future: provider.getLocations(),
      builder: (context, snapshot) {
        return CarouselSlider(
          items: provider.imgSrc.map((item) {
            // log(item, name: 'Carousel');
            return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationsScreen(image: item
                          // .images.photos?[0].src.medium ?? '',
                          ),
                    ),
                  );
                },
                child: snapshot.connectionState == ConnectionState.done
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(jDefaultPadding - 5),
                        padding: const EdgeInsets.only(
                          left: jDefaultPadding * 3,
                          bottom: jDefaultPadding * 2,
                        ),
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          color: jBlack,
                          borderRadius: jLRadius,
                          image: DecorationImage(
                            image: NetworkImage(item
                                // .images.photos![0] as String
                                ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Text(
                          'City Name',
                          // item.address.spot,

                          style: TextStyle(
                            color: jWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    : Shimmer.fromColors(
                        baseColor: appBarColor,
                        highlightColor: backGroundColor,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(jDefaultPadding - 5),
                          padding: const EdgeInsets.only(
                            left: jDefaultPadding * 3,
                            bottom: jDefaultPadding * 2,
                          ),
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            color: jWhite,
                            borderRadius: jLRadius,
                          ),
                        ),
                      ));
          }).toList(),
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 2.0,
          ),
        );
      },
    );
  }
}
