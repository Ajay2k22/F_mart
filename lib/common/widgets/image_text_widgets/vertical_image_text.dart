import 'package:demo/utils/constants/colors.dart';
import 'package:demo/utils/constants/sizes.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor = TColors.white,
    // this.backgroundColor,
    this.onTap,
  });

  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? TColors.black : TColors.white,
                ),
              ),
            ),

            ///Text
            const SizedBox(
                height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width:55,
              child: Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.white), maxLines: 1, overflow: TextOverflow.ellipsis,
              ),


            ),
          ],
        ),
      ),
    );
  }
}