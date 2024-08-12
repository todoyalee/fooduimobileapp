import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';




class SplashController extends GetxController{
final box=GetStorage();


bool get showIntro=>Box.read('showIntro') ?? true;
void changeBool(bool val){
  box.write('showIntro', val);

  update();
}


void @override
void initState() {

  Future.delayed(
    const Duration(seconds: 8),
    (){
      Get.offAll(()=>showIntro==true? cons IntroductionPage():const MainNavigator()
      transaltion:transaltion.cupertino);

    }
  );
  super.onInit();
  
}


}