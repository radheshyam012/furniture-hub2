import 'package:flutter/material.dart';

class FeaturedCategories extends StatelessWidget {
  const FeaturedCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: const Text(
                  'Featured Categories',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.network(
                        'https://media.architecturaldigest.com/photos/6049073ebd1a508e8f70dfb9/master/w_1600%2Cc_limit/AD0421_DIGGS_9.jpg',
                        height: 280,
                        fit: BoxFit.fitHeight,
                        width: MediaQuery.of(context).size.width / 3.2,
                      ),
                      const Text(
                        'House Decor',
                        style: TextStyle(fontSize: 16),
                        maxLines: 2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://media.architecturaldigest.com/photos/58d531a3e34bbc355f09afbc/master/w_1000,h_1339,c_limit/contemporary-office-library-robert-couturier-inc-new-york-new-york-201303_1000-watermarked.jpg',
                        height: 280,
                        width: MediaQuery.of(context).size.width / 3.2,
                        fit: BoxFit.fitHeight,
                      ),
                      const Text(
                        'Office',
                        style: TextStyle(fontSize: 16),
                        maxLines: 2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/kitchen-ideas-hbx100119koty-015-copy-2-1572548781.jpg?crop=0.852xw:1.00xh;0.148xw,0&resize=480:*',
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: 280,
                        fit: BoxFit.fitHeight,
                      ),
                      const Text(
                        'Kitchen',
                        style: TextStyle(fontSize: 16),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  'See All Categories',
                  style: TextStyle(color: Colors.cyan[800]),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 20,
          thickness: 5,
          color: Color.fromARGB(255, 214, 219, 220),
        ),
      ],
    );
  }
}
