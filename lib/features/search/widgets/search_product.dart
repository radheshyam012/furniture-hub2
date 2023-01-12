import 'package:fh2/common/widgets/rating_stars.dart';
import 'package:fh2/models/product.dart';
import 'package:flutter/material.dart';

class SearchProduct extends StatelessWidget {
  final Product product;
  const SearchProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalRating = 0;
    for (int i = 0; i < product.rating!.length; i++) {
      totalRating += product.rating![i].rating;
    }
    totalRating = totalRating / product.rating!.length;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.images[0],
            fit: BoxFit.fitWidth,
            height: 135,
            width: 135,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 3,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Stars(rating: totalRating),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '₹${product.price}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Text(
                  'Eligible for FREE Shipping',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const Text(
                  'In Stock',
                  style: TextStyle(color: Colors.teal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
