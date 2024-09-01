import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/appbar/tabbar.dart';
import 'package:demo/common/widgets/brands/brand_card.dart';
import 'package:demo/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:demo/common/widgets/layouts/grid_layout.dart';
import 'package:demo/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/features/shop/screens/store/widgets/category_tab.dart';
import 'package:demo/utils/constants/colors.dart';
import 'package:demo/utils/constants/image_strings.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: Colors.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      ///---Featured Border
                      TSectionHeading(
                          title: 'Features Brands', onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),

                /// Tabs
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Container(
    width: 56,
    height: 56,
    padding: const EdgeInsets.all(TSizes.sm),
    decoration: BoxDecoration(
      color:
          THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
      borderRadius: BorderRadius.circular(100),
    ),
    child: Image(
      image: const AssetImage(TImages.clothIcon),
      color:
          THelperFunctions.isDarkMode(context) ? TColors.white : TColors.dark,
    ),
  );
}
