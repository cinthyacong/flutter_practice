import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Practice05Card extends StatelessWidget {
  const Practice05Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 411,
      margin: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            // padding: EdgeInsets.only(top: 10.0),
            height: 350,
            width: 411,
            child: Image.network(
              "https://images.template.net/wp-content/uploads/2016/11/07143227/Packaging-Design-Coffee-Bag.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Elegant Designed Coffe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey.shade50)),
                  child: Text(
                    "DECORATION",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 4.1,
                  itemSize: 15.0,
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
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    '(245)',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade200),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      '\$15.99',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: Text('\$20',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey.shade200,
                            decoration: TextDecoration.lineThrough),
                        textAlign: TextAlign.right),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: Text('42% off',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.right),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.only(top: 10.00, left: 10.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(
                        width: 1.0,
                        color: Colors.blueAccent,
                      )),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
