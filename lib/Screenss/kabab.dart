import 'package:flutter/material.dart';

class Kabab extends StatelessWidget {
  const Kabab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 50, top: 20),
              child: Text(
                "Kabab",
                style: TextStyle(
                    color: Color.fromARGB(255, 252, 158, 16),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
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
                                  backgroundImage:
                                      AssetImage("images/chandankabab.jpg")),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              "Chandan Kebab",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 55, left: 25),
                                child: Text(
                                  "\$${"5.28"}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 55, left: 50),
                                child: Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                                  backgroundImage:
                                      AssetImage("images/gilafikabab.jpg")),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(right: 40, top: 12, left: 15),
                            child: Text(
                              "Gilafi Kebab",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 55, left: 35),
                                child: Text(
                                  "\$${"5.02"}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 55, left: 50),
                                child: Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
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
                                  backgroundImage:
                                      AssetImage("images/kalejikabab.webp")),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              "kaleji kebab",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 60,
                                  left: 30,
                                ),
                                child: Text(
                                  "\$${"5.67"}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 45),
                                child: Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                                  backgroundImage:
                                      AssetImage("images/seekhkabab.webp")),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 30, top: 15),
                            child: Text(
                              "Seekh Kebab",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 55, left: 35),
                                child: Text(
                                  "\$${"6.20"}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 55, left: 50),
                                child: Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
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
                                  backgroundImage:
                                      AssetImage("images/shamikabab.jpg")),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 33,
                            ),
                            child: Text(
                              "Shami Kabab",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 60,
                                  left: 20,
                                ),
                                child: Text(
                                  "\$${"8.01"}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 55),
                                child: Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                                  backgroundImage:
                                      AssetImage("images/tikkakabab.jpg")),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 40, top: 15),
                            child: Text(
                              "Tikka kebab",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 55, left: 35),
                                child: Text(
                                  "\$${"4.85"}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 55, left: 50),
                                child: Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
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
          ],
        ),
      ),
    );
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