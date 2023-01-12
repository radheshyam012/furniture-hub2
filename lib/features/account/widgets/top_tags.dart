import 'package:fh2/features/account/service/account_services.dart';
import 'package:fh2/features/account/widgets/top_buttons.dart';
import 'package:fh2/features/order/screen/your_order_screen.dart';
import 'package:fh2/features/setting/screen/your_account_screen.dart';
import 'package:flutter/material.dart';

class TopTags extends StatelessWidget {
  const TopTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TopButton(
              text: 'Your Orders',
              onTap: () {
                Navigator.pushNamed(context, YourOrderScreen.routName);
              },
            ),
            TopButton(
              text: 'Your Account',
              onTap: () {
                Navigator.pushNamed(context, YourAccountScreen.routeName);
              },
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            TopButton(
              text: 'Log Out',
              onTap: () => AccountServices().logOut(context),
            ),
            TopButton(
              text: 'Your Wish List',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
