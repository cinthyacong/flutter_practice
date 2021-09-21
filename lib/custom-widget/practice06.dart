import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Practice06Card extends StatelessWidget {
  const Practice06Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 600,
      height: 270,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // padding: EdgeInsets.all(20.0),
            height: 270,
            width: 160,
            child: Image.network(
              "https://images.template.net/wp-content/uploads/2016/11/07143227/Packaging-Design-Coffee-Bag.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 5.0, left: 5.00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Elegant Designed Coffe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0,
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.blueGrey.shade50)),
                          child: Text(
                            "DECORATION",
                            style: TextStyle(
                              fontSize: 8.0,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          initialRating: 4.1,
                          itemSize: 13.0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            '(245)',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade200),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0, left: 5.0),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(6.0),
                            child: Text(
                              '\$15.99',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(6.0),
                            child: Text('\$20',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blueGrey.shade200,
                                    decoration: TextDecoration.lineThrough),
                                textAlign: TextAlign.right),
                          ),
                          Container(
                            padding: EdgeInsets.all(6.0),
                            child: Text('42% off',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.right),
                          ),
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(
                        '• Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.blueGrey.shade200,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 3.0),
                    child: Text(
                        '• Duis urna risus, molestie ac massa at, facilisis pellentesque justo.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.blueGrey.shade200,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
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
                              fontSize: 12,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
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
