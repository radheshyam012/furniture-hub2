import 'package:fh2/common/widgets/search_navbar.dart';
import 'package:fh2/home/widgets/carousel_image.dart';
import 'package:fh2/home/widgets/deal_of_day.dart';
import 'package:fh2/home/widgets/featured_category.dart';
import 'package:fh2/home/widgets/pocket_friend_store.dart';
import 'package:fh2/home/widgets/top_categories.dart';
import 'package:flutter/material.dart';

import '../widgets/address_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SearchNavBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AddressBar(),
            const SizedBox(
              height: 10,
            ),
            const TopCategories(),
            const SizedBox(
              height: 10,
            ),
            const CarouselImage(),
            const DealOfDay(),
            const Divider(
              height: 20,
              thickness: 5,
              color: Color.fromARGB(255, 214, 219, 220),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 5,
                bottom: 10,
              ),
              child: Text(
                'Living room design',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.network(
                'https://goodhomes.wwmindia.com/content/2018/jul/josiecon15090272621531747713.jpg',
                width: double.maxFinite,
                fit: BoxFit.fill,
                height: 380,
              ),
            ),
            const Divider(
              height: 20,
              thickness: 5,
              color: Color.fromARGB(255, 214, 219, 220),
            ),
            const PocketFriendlyStore(),
            const FeaturedCategories(),
          ],
        ),
      ),
    );
  }
}
