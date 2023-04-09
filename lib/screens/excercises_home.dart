import 'package:firebase_auth98/screens/const.dart';
import 'package:flutter/material.dart';

class ExcercisesHomeScreen extends StatelessWidget {
  final List<Data> data = [
    Data(
      // imageUrl: "assets/2.png",
      heading: "Meditation",
      time: "60 Hours",
      exercises: "45 exercises",
    ),
    Data(
      // imageUrl: "assets/3.png",
      heading: "Cardio",
      time: "45 Hours",
      exercises: "20 exercises",
    ),
    Data(
      // imageUrl: "assets/4.png",
      heading: "Pilates",
      time: "60 Hours",
      exercises: "45 exercises",
    ),
    Data(
      // imageUrl: "assets/1.png",
      heading: "Yoga",
      time: "50 Hours",
      exercises: "45 exercises",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            header(size),
            Container(
              width: size.width / 1.15,
              child: Text(
                "Find Your",
                style: TextStyle(
                  fontSize: 25,
                  color: color[2],
                ),
              ),
            ),
            Container(
              width: size.width / 1.15,
              child: Text(
                "Favourite Workout",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: color[2],
                ),
              ),
            ),
            listViewBuilder(size),
          ],
        ),
      ),
    );
  }

  Widget listViewBuilder(Size size) {
    return Container(
      height: size.height / 1.25,
      width: size.width,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return items(size, index);
        },
      ),
    );
  }

  Widget items(Size size, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height / 3.8,
        width: size.width / 1.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color[index]),
        child: Row(
          children: [
            Container(
              height: size.height / 3.8,
              width: size.width / 2.2,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 30,
                  ),
                  Container(
                    width: size.width / 2.8,
                    child: Text(
                      data[index].heading,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      height: size.height / 12,
                      width: size.width / 2.8,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              Text(
                                data[index].exercises,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timelapse,
                                color: Colors.white,
                              ),
                              Text(
                                data[index].time,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 2.8,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: size.height / 13.5,
                      width: size.width / 13.5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: size.height / 4,
            //   width: size.width / 2,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //     image: AssetImage(data[index].imageUrl),
            //   )),
            // ),
          ],
        ),
      ),
    );
  }

  Widget header(Size size) {
    return Container(
      height: size.height / 12,
      width: size.width,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.menu,
              color: color[2],
            ),
          ),
          SizedBox(
            width: size.width / 1.85,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
              color: color[2],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.notifications,
              color: color[2],
            ),
          )
        ],
      ),
    );
  }
}

class Data {
  final String heading, exercises, time;
  Data({
    required this.exercises,
    required this.heading,
    // required this.imageUrl,
    required this.time,
  });
}
