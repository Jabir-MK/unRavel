import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.leadIcon,
    required this.tailIcon,
    required this.leadAction,
    required this.tailAction,
  });

  final IconData leadIcon;
  final IconData tailIcon;
  final VoidCallback leadAction;
  final VoidCallback tailAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(jDefaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: jDefaultPadding),
        height: 70,
        decoration: BoxDecoration(
          color: appBarColor,
          borderRadius: jLRadius,
          boxShadow: const [
            BoxShadow(
              color: jMediocreBlack,
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: leadAction,
              child: Container(
                padding: const EdgeInsets.all(jDefaultPadding),
                decoration: BoxDecoration(
                  color: appBarColor,
                  boxShadow: const [
                    BoxShadow(
                      color: jBlackShade,
                      blurRadius: 6,
                    )
                  ],
                  borderRadius: jMRadius,
                ),
                child: Icon(leadIcon, size: 25),
              ),
            ),
            const Text(
              'App Icon',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            InkWell(
              onTap: tailAction,
              child: Container(
                padding: const EdgeInsets.all(jDefaultPadding),
                decoration: BoxDecoration(
                  color: appBarColor,
                  boxShadow: const [
                    BoxShadow(
                      color: jBlackShade,
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: jMRadius,
                ),
                child: Icon(tailIcon, size: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
