import 'package:demo_getx/controller/counter_controller.dart';
import 'package:demo_getx/view/second_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("HomeView", style: TextStyle(fontSize: 30))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () =>
                  Text('${controller.counter}', style: TextStyle(fontSize: 30)),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.to(SecondView());
              },
              child: Text("Go to second"),
            ),
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
