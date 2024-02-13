import 'package:flutter/material.dart';

class uiClone1App extends StatelessWidget {
  const uiClone1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF1F1F1F),
        body:
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 60,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 35),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left:15,
                    top: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "MONDAY 16",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "TODAY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5,
                        ),
                        child: Icon(
                          Icons.circle,
                          color: Color(0xFFB12680),
                          size: 10,
                        ),
                      ),
                      Text(
                        "17",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "18",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "19",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "20",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "21", style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 40, fontWeight: FontWeight.w500),),
                      const SizedBox(
                        width: 20,
                      ),
                      Text("22", style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 40, fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEF754),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Column(
                          children: [
                            Text("11", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),),
                            Text("30", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500,
                              height: -0.2,),),
                            SizedBox(height: 10,),
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(90 / 360),
                              child: Row(
                                children: [
                                  Icon(Icons.remove,),
                                ],
                              ),
                            ),
                            Text("12", style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "20",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: -0.2,
                                ),
                              ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              const Text("DESIGN\nMEETING", style: TextStyle(
                                height: 1.0,
                                fontSize: 60,
                                fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 30,),
                              Text("ALEX       HELENA       NANA", style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Color(0xFF9C6BCE),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Column(
                          children: [
                            Text("12", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),),
                            Text("35", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500,
                              height: -0.2,),),
                            SizedBox(height: 10,),
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(90 / 360),
                              child: Row(
                                children: [
                                  Icon(Icons.remove,),
                                ],
                              ),
                            ),
                            Text("14", style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: -0.2,
                                ),
                              ),
                            SizedBox(height: 30,)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text("DAILY\nPROJECT", style: TextStyle(
                                height: 1.0,
                                fontSize: 60,
                                fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Text("ME", style: TextStyle(color: Colors.black),),
                                  Text("         RICHARD       CIRY      +4", style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Color(0xFFBCEE4B),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Column(
                          children: [
                            Text("15", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),),
                            Text("00", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500,
                              height: -0.2,),),
                            SizedBox(height: 10,),
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(90 / 360),
                              child: Row(
                                children: [
                                  Icon(Icons.remove,),
                                ],
                              ),
                            ),
                            Text("16", style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "30",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: -0.2,
                                ),
                              ),
                            SizedBox(height: 30,)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text("WEEKLY\nPLANNING", style: TextStyle(
                                height: 1.0,
                                fontSize: 60,
                                fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 30,),
                              Text("DEN         NANA         MARK", style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
                    ),
          ),
      )
    );
  }
}
