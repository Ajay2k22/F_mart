import 'package:demo/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:demo/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:demo/common/widgets/layouts/grid_layout.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:demo/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:demo/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // searchbar
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //   category
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        const TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        ///categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return TVerticalImageText(
                                image: TImages.shoeIcon,
                                title: 'Shoes',
                                onTap: () {},
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSize),
              child: Column(
                children: [
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///----Popular product -- tUTORIAL (section #3 , video #7)
                  TGridLayout(
                      itemCount: 5,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TSize {}
