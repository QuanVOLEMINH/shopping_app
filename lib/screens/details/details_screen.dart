import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants.dart';

import '../../models/product.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg")),
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/icons/cart.svg")),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
