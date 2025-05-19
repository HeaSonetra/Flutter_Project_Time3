import 'package:demo_getx/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondView extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text("Second View"))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () =>
                  Text('${controller.counter}', style: TextStyle(fontSize: 30)),
            ),
            SizedBox(height: 30),
           
          ],
        ),
      ),
       floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => controller.increment(),
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20,),
          FloatingActionButton(
            onPressed: () => controller.decrement(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
