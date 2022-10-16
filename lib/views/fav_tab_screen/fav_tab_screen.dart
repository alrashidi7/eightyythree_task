
import 'package:eightyythree_task/views/cart_screen/widgets/cart_widget.dart';
import 'package:eightyythree_task/views/fav_tab_screen/fav_widget/fav_list_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/title_widget.dart';

class FavPageScreen extends StatelessWidget {
  const FavPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleWidget(context,size),
            favItems(context,size),

          ],
        ),
      );
  }
}
