import 'package:flutter/material.dart';

import 'explore_widget.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Row(
        children: [
          ExploreWidget(
              title: "Food", asset: "assets/icons/burger.png"),
          SizedBox(
            width: 8,
          ),
          ExploreWidget(
              title: "Pet", asset: "assets/icons/paw.png"),
          SizedBox(
            width: 8,
          ),
          ExploreWidget(
              title: "Shopping", asset: "assets/icons/shopping_bag.png"),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
