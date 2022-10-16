import 'dart:convert';

import 'package:eightyythree_task/consts/const.dart';
import 'package:get/get.dart';

import '../models/deal_model.dart';

class DealController extends GetxController{
 late List<DealModel> deals = dealsList ;
  addToFav(int index){
    deals[index].isFav = true;
    update();
  }

  removeFromFav(int index){
    deals[index].isFav = false;
    update();
  }

 List<DealModel> getFavDeals(){
     List<DealModel> favDeals = [] ;
    for(var item in deals){
      if(item.isFav){
        favDeals.add(item);
      }
    }
    return favDeals;
  }
}