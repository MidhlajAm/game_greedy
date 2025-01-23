import 'package:flutter/material.dart';
import 'package:game_greedy/Controllers/data_controller.dart';
import 'package:game_greedy/components/game_card.dart';
import 'package:get/get.dart';
import 'package:game_greedy/pages/Home//drawer.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final DataControllerx cntldata = Get.put(DataControllerx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        title: Text('Toons',
            style: TextStyle(
                color: Color.fromARGB(255, 151, 173, 148),
                fontWeight: FontWeight.w600,
                fontSize: 28)),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.search_rounded,
              size: 42,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
                itemCount: cntldata.loadData.length,
                itemBuilder: (context, index) {
                  return Gamecard(
                    index: index,
                  );
                }),
          ),

        ],
      ),
    );
  }
}
