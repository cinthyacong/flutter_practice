import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Practice04Card extends StatelessWidget {
  const Practice04Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://i.imgur.com/JFHjdNr.jpg"),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jonh Doe",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            "28 yrs, Male",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 20.0, top: 10.00, right: 20.00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "+91 9876543215",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: const EdgeInsets.only(top: 10.00),
                    child: Row(
                      // mainAxisAlignment:
                      //     MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10.00),
                          child: Row(
                            children: [
                              Text(
                                "07:00 PM",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 100.00),
                          child: Row(
                            children: [
                              Text(
                                "2 Feb 2021",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Consult",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
