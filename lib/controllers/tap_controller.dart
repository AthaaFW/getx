import 'package:get/get.dart';

class TapController extends GetxController{
  int _x = 0;
  int get x=> _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  RxInt _z = 0.obs;
  RxInt get z=> _z;

  void totalXY(){
    _z.value = x + _y.value;
    print(_z);
    update();
  }

  void increaseX(){
    _x++;
    update();
    print(_x);
  }

  void decreaseX(){
    _x--;
    update();
  }

  void increaseY(){
    _y++;
  }

  void decreaseY(){
    _y--;
  }
}