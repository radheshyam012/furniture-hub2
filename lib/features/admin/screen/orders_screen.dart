import 'package:fh2/common/widgets/loader.dart';
import 'package:fh2/features/account/widgets/single_product.dart';
import 'package:fh2/features/admin/services/admin_services.dart';
import 'package:fh2/features/order/screen/order_detail_screen.dart';
import 'package:fh2/models/order.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<Order>? orders;
  final AdminServices adminServices = AdminServices();

  @override
  void initState() {
    super.initState();
    fetchOrders();
  }

  void fetchOrders() async {
    orders = await adminServices.fetchAllOrders(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return orders == null
        ? const Loader()
        : GridView.builder(
            itemCount: orders!.length,
            padding: const EdgeInsets.all(5),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 5),
            itemBuilder: (context, index) {
              final orderData = orders![index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, OrderDetailScreen.routName,
                      arguments: orderData);
                },
                child: SizedBox(
                  height: 140,
                  child: SingleProduct(image: orderData.products[0].images[0]),
                ),
              );
            },
          );
  }
}
