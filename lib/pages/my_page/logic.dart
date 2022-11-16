import 'package:get/get.dart';

class MyPageLogic extends GetxController{

  ///obseble
  var ismusic=true.obs;
  bool  get  getMusic{
    return ismusic.value;
}

// bool getMusicx(){
//
//   return ismusic.value;
// }
  set setMusic(bool ismusic){
    this.ismusic.value=ismusic;
  }

  // void setMusuicx(bool ismusic){
  //   this.ismusic.value=ismusic;
  // }
}