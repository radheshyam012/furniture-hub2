import 'package:fh2/common/widgets/loader.dart';
import 'package:fh2/features/account/service/account_services.dart';
import 'package:fh2/features/account/widgets/single_product.dart';
import 'package:fh2/features/order/screen/order_detail_screen.dart';
import 'package:fh2/models/order.dart';
import 'package:flutter/material.dart';

import '../../../constants/globle_variable.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temprory list
  final AccountServices accountServices = AccountServices();
  List<Order>? orders;
  @override
  void initState() {
    super.initState();
    fetchOrders();
  }

  void fetchOrders() async {
    orders = await accountServices.fetchMyOrders(context: context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        //Display orders
        orders == null
            ? const Loader()
            : Container(
                height: 170,
                padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: orders!.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () => Navigator.pushNamed(
                        context,
                        OrderDetailScreen.routName,
                        arguments: orders![index],
                      ),
                      child: SingleProduct(
                        image: orders![index].products[0].images[0],
                      ),
                    );
                  }),
                ),
              ),
      ],
    );
  }
}
