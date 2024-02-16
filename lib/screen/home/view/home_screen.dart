import 'package:counter_advanced/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text("Counter App Advanced"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            color:Colors.red.shade200,child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Consumer<Provider1>(builder: (context, value, child) => Text("${value.i}",style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),
            const SizedBox(height: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {
                      context.read<Provider1>().add1();
                    }, child: const Text("Add")),
                    const SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {
                      context.read<Provider1>().remove1();
                    }, child: const Text("Minus")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {
                      context.read<Provider1>().x2();
                    }, child: const Text("2x")),
                    const SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {
                      context.read<Provider1>().x3();
                    }, child: const Text("3x")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {
                      context.read<Provider1>().x4();
                    }, child: const Text("4x")),
                    const SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {
                      context.read<Provider1>().x5();
                    }, child: const Text("5x")),
                  ],
                ),
              ],
            ),
      
          ],
        )),
      ),
    ));
  }
}
