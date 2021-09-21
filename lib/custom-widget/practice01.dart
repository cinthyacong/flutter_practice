import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Practice01Card extends StatelessWidget {
  const Practice01Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      height: 630,
      width: 411,
      margin: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
              'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/d2902284-53a1-43ad-809b-aecec38b1365/calzado-jordan-max-aura-3-lqz9jG.png',
              width: 300,
              height: 300,
            ),
          ),
          Container(
            child: Text(
              "JORDAN MAX AURA 3",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            margin: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: Text(
              "Take a piece of Jordan's history and heritage with the Jordan Max Aura 3.",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 14),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "\$60",
              style: TextStyle(
                fontSize: 26,
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    itemSize: 25.0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.00),
                    width: 411,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Center(
                        child: Text("ADD TO CART",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
