import 'package:fh2/common/widgets/bottom_bar.dart';
import 'package:fh2/features/address/screen/address_list_screen.dart';
import 'package:fh2/features/address/screen/address_screen.dart';
import 'package:fh2/features/address/screen/new_address.dart';
import 'package:fh2/features/admin/screen/add_product_screen.dart';
import 'package:fh2/features/auth/screen/auth_screen.dart';
import 'package:fh2/features/order/screen/order_detail_screen.dart';
import 'package:fh2/features/order/screen/your_order_screen.dart';
import 'package:fh2/features/products/screen/product_detail_screen.dart';
import 'package:fh2/features/search/screen/search_screen.dart';
import 'package:fh2/features/setting/screen/your_account_screen.dart';
import 'package:fh2/features/webview/screen/web_screen.dart';
import 'package:fh2/home/screen/category_deals_screen.dart';
import 'package:fh2/home/screen/home_screen.dart';
import 'package:fh2/models/order.dart';
import 'package:fh2/models/product.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    //login & Registration screen
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    //home screen
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    //bottom bar
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    //Add product screen
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
    //category deals
    case CategoryDealScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealScreen(
          category: category,
        ),
      );
    //search
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
    //product details screen
    case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProductDetailScreen(
          product: product,
        ),
      );

    //Address screen
    case AddressScreen.routeName:
      var totalAmount = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AddressScreen(
          totalAmount: totalAmount,
        ),
      );
    //order detail screen
    case OrderDetailScreen.routName:
      var order = routeSettings.arguments as Order;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => OrderDetailScreen(
          order: order,
        ),
      );

    //your orders screen
    case YourOrderScreen.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const YourOrderScreen(),
      );
    //your account screen
    case YourAccountScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const YourAccountScreen(),
      );
    //Add address screen
    case AddAddressScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddAddressScreen(),
      );
    //all address screen
    case AllAddressScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AllAddressScreen(),
      );

    case WebViewScreen.routeName:
      var urlString = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        fullscreenDialog: true,
        builder: (_) => WebViewScreen(
          urlString: urlString,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist'),
          ),
        ),
      );
  }
}
