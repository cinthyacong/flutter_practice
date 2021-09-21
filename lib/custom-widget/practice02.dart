import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Practice02Card extends StatelessWidget {
  const Practice02Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 650,
        width: 411,
        margin: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              height: 480,
              width: 411,
              child: Image.network(
                "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/750ab688-a4c1-471e-abfe-83b8379e1065/serena-williams-tennis-t-shirt-lPcZKB.png",
                // fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TENNIS T-SHIRT",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "WOMAN'S TENNIS T-SHIRT",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: new Text(
                      "NEW",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20.0, bottom: 5.00),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      itemSize: 15.0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.0),
                      child: Text(
                        '\$9.00',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      child: Text('\$18.00',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough),
                          textAlign: TextAlign.right),
                    ),
                  ],
                )),
          ],
        ));
  }
}
