import 'package:eightyythree_task/views/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../viewmodels/theme_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return bottomNavBar(context);

  }
}
