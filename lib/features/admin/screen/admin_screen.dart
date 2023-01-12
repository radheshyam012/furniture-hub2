import 'package:fh2/constants/globle_variable.dart';
import 'package:fh2/features/admin/screen/analyics_screen.dart';
import 'package:fh2/features/admin/screen/orders_screen.dart';
import 'package:flutter/material.dart';

import 'post_screen.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _page = 0;
  double bottomBarWidth = 42;
  double borderWidth = 5;

  List<Widget> pages = [
    const PostScreen(),
    const AnalyticsScreen(),
    const OrdersScreen(),
  ];
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset('assets/images/fh2.png',
                    width: 120, height: 130, color: Colors.black),
              ),
              const Text(
                "Admin",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        elevation: 0,
        items: [
          //post
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: borderWidth,
                  ),
                ),
              ),
              child: const Icon(Icons.home_outlined),
            ),
            label: '',
          ),
          // Analitics
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: borderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.analytics_outlined,
              ),
            ),
            label: '',
          ),
          //orders
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: borderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.all_inbox,
              ),
            ),
            label: '',
          ),
          // BottomNavigationBarItem(
          //   icon: Container(
          //     width: bottomBarWidth,
          //     decoration: BoxDecoration(
          //       border: Border(
          //         top: BorderSide(
          //           color: _page == 3
          //               ? GlobalVariables.selectedNavBarColor
          //               : GlobalVariables.backgroundColor,
          //           width: borderWidth,
          //         ),
          //       ),
          //     ),
          //     child: const Icon(
          //       Icons.subject_outlined,
          //     ),
          //   ),
          //   label: '',
          // ),
        ],
      ),
    );
  }
}
