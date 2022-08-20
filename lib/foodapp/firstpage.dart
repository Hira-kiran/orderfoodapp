// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Screenss/Burgers.dart';
import '../Screenss/kabab.dart';
import '../Screenss/shawarma.dart';
import '../Screenss/sushi.dart';
import '../Screenss/tikka.dart';
import '../Screenss/wings.dart';
import '../widgetss/searchbar.dart';
import 'secondPage.dart';

class PizaApp extends StatefulWidget {
  const PizaApp({super.key});

  @override
  State<PizaApp> createState() => _PizaAppState();
}

class _PizaAppState extends State<PizaApp> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 90,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Hello,",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Hira",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 22),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, right: 95),
                child: Text(
                  "What you want eat today",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: SizedBox(
                height: 55,
                width: 55,
                child:
                    CircleAvatar(backgroundImage: AssetImage("images/dp.jpg")),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Container(
                      height: 52,
                      width: 265,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 222, 222),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: IconButton(
                                  onPressed: () {
                                    showSearch(
                                        context: context,
                                        delegate: Customsearch());
                                  },
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ))),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 7,
                            ),
                            child: Text("Search for food",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 110, 110, 110),
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Container(
                      height: 52,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child:
                          const Icon(Icons.tune_outlined, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.orange,
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/pizza.jpg"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Pizza",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color.fromARGB(255, 244, 226, 201),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/burger.jpg"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Burgers()));
                                },
                                child: const Text(
                                  "Burger",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sushi()));
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 244, 226, 201),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/Sushi.jpg"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Sushi",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Wings()));
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 244, 226, 201),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/wiings.webp"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3),
                                child: Text(
                                  "Wings",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Shwarma()));
                        },
                        child: Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 244, 226, 201),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/shwarma.jpg"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3),
                                child: Text(
                                  "Shwarma",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Tikka()));
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 244, 226, 201),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/tikka.jpg"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3),
                                child: Text(
                                  "Tikka",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Kabab()));
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 244, 226, 201),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/kabab.webp"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3),
                                child: Text(
                                  "Kabab",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Container(
                          height: 320,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomPaint(
                            painter: RPSCustomPainter(),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 170,
                                  width: 140,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "images/meat pizza.jpg")),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    right: 50,
                                  ),
                                  child: Text(
                                    "Meat Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 60, top: 5),
                                  child: Text(
                                    "Mixed Pizza",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 40, left: 25),
                                      child: Text(
                                        "\$${"8.30"}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40, left: 50),
                                      child: Container(
                                          height: 27,
                                          width: 27,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.orange,
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 19,
                                          )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          height: 337,
                          width: 195,
                          child: CustomPaint(
                            painter: SCNDCustomPainter(),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 160,
                                  width: 140,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "images/cheese pizza.jpg")),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      right: 40, top: 10, left: 10),
                                  child: Text(
                                    "Cheese Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      right: 60, top: 5, left: 10),
                                  child: Text(
                                    "Mixed Pizza",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 40, left: 35),
                                      child: Text(
                                        "\$${"7.67"}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40, left: 50),
                                      child: Container(
                                          height: 27,
                                          width: 27,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.orange,
                                          ),
                                          child: const Icon(Icons.add,
                                              color: Colors.white, size: 19)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 320,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomPaint(
                            painter: RPSCustomPainter(),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 170,
                                  width: 140,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "images/fajita pizza.png")),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 50),
                                  child: Text(
                                    "Fajita Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 60, top: 5),
                                  child: Text(
                                    "Mixed Pizza",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 40,
                                        left: 20,
                                      ),
                                      child: Text(
                                        "\$${"10.67"}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40, left: 50),
                                      child: Container(
                                          height: 27,
                                          width: 27,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.orange,
                                          ),
                                          child: const Icon(Icons.add,
                                              color: Colors.white, size: 19)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          height: 335,
                          width: 195,
                          child: CustomPaint(
                            painter: SCNDCustomPainter(),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 160,
                                  width: 140,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "images/tanduri pizza.jpg")),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 40, top: 15),
                                  child: Text(
                                    "Tanduri Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 60, top: 5),
                                  child: Text(
                                    "Mixed Pizza",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 35, left: 35),
                                      child: Text(
                                        "\$${"7.56"}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35, left: 50),
                                      child: Container(
                                          height: 27,
                                          width: 27,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.orange,
                                          ),
                                          child: const Icon(Icons.add,
                                              color: Colors.white, size: 19)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 320,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomPaint(
                            painter: RPSCustomPainter(),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 170,
                                  width: 140,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "images/malai boti.jpg")),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    right: 10,
                                  ),
                                  child: Text(
                                    "Malai Boti Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 60, top: 5),
                                  child: Text(
                                    "Mixed Pizza",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 40,
                                        left: 20,
                                      ),
                                      child: Text(
                                        "\$${"10.67"}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40, left: 50),
                                      child: Container(
                                          height: 27,
                                          width: 27,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.orange,
                                          ),
                                          child: const Icon(Icons.add,
                                              color: Colors.white, size: 19)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          height: 335,
                          width: 195,
                          child: CustomPaint(
                            painter: SCNDCustomPainter(),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 160,
                                  width: 140,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "images/tikka pizza.png")),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 40),
                                  child: Text(
                                    "Tikka Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 53, top: 5),
                                  child: Text(
                                    "Mixed Pizza",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 45, left: 35),
                                      child: Text(
                                        "\$${"6.25"}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 45, left: 50),
                                      child: Container(
                                          height: 27,
                                          width: 27,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.orange,
                                          ),
                                          child: const Icon(Icons.add,
                                              color: Colors.white, size: 19)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 90),
                      child: Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            "SELECTED FOOD",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          items: const [
            Icon(
              Icons.home,
              color: Colors.orange,
              size: 30,
            ),
            Icon(
              Icons.favorite_outline,
              color: Colors.orange,
              size: 30,
            ),
            Icon(
              Icons.message,
              color: Colors.orange,
              size: 30,
            ),
            Icon(
              Icons.notifications,
              color: Colors.orange,
              size: 30,
            ),
            Icon(
              Icons.share,
              color: Colors.orange,
              size: 30,
            )
          ],
          height: 65,
          index: index,
        ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 248, 221, 180)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0157455, size.height * 0.0604615);
    path0.lineTo(size.width * 0.0145455, size.height * 0.9230769);
    path0.lineTo(size.width * 0.9818182, size.height * 0.9230769);
    path0.lineTo(size.width * 0.9800000, size.height * 0.2359231);
    path0.lineTo(size.width * 0.0157455, size.height * 0.0604615);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SCNDCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 248, 221, 180)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.9072727, size.height * 0.0836105);
    path0.lineTo(size.width * 0.9090909, size.height * 0.8823529);
    path0.lineTo(size.width * 0.0909091, size.height * 0.8823529);
    path0.lineTo(size.width * 0.0909091, size.height * 0.2281947);
    path0.lineTo(size.width * 0.9072727, size.height * 0.0836105);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
