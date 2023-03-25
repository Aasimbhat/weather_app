import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingleWeather extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return           Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 150,
                            ),
                            Text(
                              "Mumbai",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "12:56 PM -- Sat, 25 Mar 2023",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "30\u2103",
                              style: TextStyle(
                                  fontSize: 85,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/sun.svg",width: 34,height: 34,color: Colors.white,),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Day",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 40),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                              "Wind",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "km/h",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                             children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.white38,

                              ),
                               Container(
                                height: 5,
                                width: 5,
                                color: Colors.greenAccent,

                              ),
                             ],
                            )
                               
                              ],

                            ),
                             Column(
                              children: [
                                Text(
                              "Rain",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "%",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                             children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.white38,

                              ),
                               Container(
                                height: 5,
                                width: 5,
                                color: Colors.redAccent,

                              ),
                             ],
                            )
                               
                              ],

                            ),
                             Column(
                              children: [
                                Text(
                              "Humidity",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "%",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                             children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.white38,

                              ),
                               Container(
                                height: 5,
                                width: 5,
                                color: Colors.redAccent,

                              ),
                             ],
                            )
                               
                              ],

                            )

                            
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
              );
  }
}