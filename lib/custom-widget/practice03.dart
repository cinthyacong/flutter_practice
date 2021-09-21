import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Practice03Card extends StatelessWidget {
  const Practice03Card({Key? key}) : super(key: key);

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
            height: 380,
            width: 411,
            child: Image.network(
              "https://c.bdac.co/bdac/BANKOFAMERICASTORE/ProductImages/1506856_z.jpg?v=636737662800000000",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, top: 10.00),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Umbrella Bull Nike",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Bank of America Store",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.00),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.00),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                      fontSize: 23.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 23.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
