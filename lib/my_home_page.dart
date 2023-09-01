import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stateman/controllers/tap_controller.dart';
import 'package:stateman/first_page.dart';
import 'package:stateman/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController){
              return Container(
                margin: const EdgeInsets.all(20),
                // width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF90dad0)
                ),
                child: Center(child: Text(tapController.x.toString(), style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),)),
              );
            }),
            GestureDetector(
              onTap: (){
                controller.increaseX();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                // width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF90dad0)
                ),
                child: Center(child: Text('Tap', style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>FirstPage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF90dad0)
                ),
                child: Center(child: Text('Got to first page', style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> SecondPage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF90dad0)
                ),
                child: Center(child: Text('Second Page', style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF90dad0)
                ),
                child: Center(child: Text('Tap', style: TextStyle(
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
