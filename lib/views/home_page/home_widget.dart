import 'package:eightyythree_task/views/home_page/widgets/address/address_widget.dart';
import 'package:eightyythree_task/views/home_page/widgets/banner/banner_widget.dart';
import 'package:eightyythree_task/views/home_page/widgets/categories/categories.dart';
import 'package:eightyythree_task/views/home_page/widgets/deals/deals_widget.dart';
import 'package:eightyythree_task/views/home_page/widgets/search/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../consts/const.dart';
import '../widgets/custom_shape.dart';
import '../widgets/title_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        titleWidget(context, size),
        searchWidget(context, size),
        userAddressWidget(context, size),
        categories(context, size),
        dealsOfDay(context, size),
        banner(context, size),
      ],
    );
  }



}
