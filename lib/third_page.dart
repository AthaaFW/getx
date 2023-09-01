import 'package:flutter/material.dart';
import 'package:stateman/controllers/tap_controller.dart';
import 'package:get/get.dart';
import 'package:stateman/my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(()=> HomePage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF90dad0)
                    ),
                    child: Center(child: Text("X + Y Value ="+Get.find<TapController>().z.toString(), style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),)),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(()=> HomePage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF90dad0)
                    ),
                    child: Center(child: Text("Y Value ="+Get.find<TapController>().y.value.toString(), style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),)),
                  ),
                ),
              ],
            )),
            GestureDetector(
              onTap: (){
                Get.to(()=> HomePage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF90dad0)
                ),
                child: Center(child: Text("X Value ="+Get.find<TapController>().x.toString(), style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Get.to(()=> HomePage());
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF90dad0)
                ),
                child: Center(child: Text("Increase Y value", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Get.to(()=> HomePage());
                Get.find<TapController>().totalXY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF90dad0)
                ),
                child: Center(child: Text("Total X + Y", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
