import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:game_greedy/Controllers/data_controller.dart';
import 'package:get/get.dart';

class Gamecard extends StatelessWidget {
  final int index;
  const Gamecard({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    DataControllerx dataController = Get.put(DataControllerx());
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10),
          child: SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width - 50,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: dataController.loadData[index].color,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${dataController.loadData[index].t1}\n',
                            style: TextStyle(
                                color: Colors.white38,
                                fontFamily: 'bpop',
                                fontSize:
                                    dataController.loadData[index].t1.isEmpty
                                        ? 0
                                        : 22,
                                height: 1.0),
                          ),
                          TextSpan(
                            text: '${dataController.loadData[index].t2}\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'bpop',
                                fontSize:
                                    dataController.loadData[index].t2.isEmpty
                                        ? 0
                                        : 30,
                                height: 1.0),
                          ),
                          TextSpan(
                            text: dataController.loadData[index].t3,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'bpop',
                                fontSize:
                                    dataController.loadData[index].t3.isEmpty
                                        ? 0
                                        : 42,
                                height: 1.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //rating bar
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RatingBar(
                          itemSize: 30,
                          glowColor: Colors.white24,
                          glow: true,
                          glowRadius: 3,
                          initialRating: dataController.loadData[index].rating,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                            full: Icon(
                              Icons.star_rate_rounded,
                              color: Colors.white,
                            ),
                            half: Icon(
                              Icons.star_half_rounded,
                              color: Colors.white,
                            ),
                            empty: Icon(
                              Icons.star_outline_rounded,
                              color: Colors.white,
                            ),
                          ),
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          onRatingUpdate: (value) {
                            dataController.loadData[index].rating = value;
                            dataController.loadData.refresh();
                          },
                        ),
                        Obx(
                          () => Text(
                              dataController.loadData[index].rating.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'pop')),
                        ),
                      ],
                    ),
                  ),
                  //buy section
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                              side: BorderSide(color: Colors.white, width: 2)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.euro_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                dataController.loadData[index].price.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'bpop'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Details ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'pop')),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 8,
          bottom: 8,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: dataController.loadData[index].color[2],
                  blurRadius: 50,
                  spreadRadius: -30,
                  offset: Offset(
                    -20,
                    20,
                  ),
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/${dataController.loadData[index].image}',
              height: 210,
            ),
          ),
        ),
      ],
    );
  }
}
