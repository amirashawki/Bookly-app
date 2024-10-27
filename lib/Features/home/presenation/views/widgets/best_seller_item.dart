import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 1.4 / 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/test_image.png'))),
              )),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Harry potter and the Goblet'),
              Text(
                'J.K. Rowling',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Row(
                children: [
                  Text('19.99 &'),
                  const SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.8'),
                      SizedBox(
                        width: 5,
                      ),
                      Text('(2390)')
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
