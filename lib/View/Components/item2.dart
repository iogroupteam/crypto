import 'package:crypto/View/selectCoin.dart';
import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  var item;
  Item2({this.item});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: myWidth * 0.03, vertical: myHeight * 0.02),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (contest) => SelectCoin(selectItem: item,)));
        },
        child: Container(
          padding: EdgeInsets.only(
            left: myWidth * 0.03,
            right: myWidth * 0.06,
            top: myHeight * 0.02,
            bottom: myHeight * 0.02,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: myHeight * 0.035, child: Image.network(item.image)),
              SizedBox(
                height: myHeight * 0.02,
              ),
              Text(
                item.id,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: myHeight * 0.01,
              ),
              Row(
                children: [
                  Text(
                    item.priceChange24H.toString().contains('-')
                        ? "-\$" +
                            item.priceChange24H
                                .toStringAsFixed(2)
                                .toString()
                                .replaceAll('-', '')
                        : "\$" + item.priceChange24H.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: myWidth * 0.03,
                  ),
                  Text(
                    item.marketCapChangePercentage24H.toStringAsFixed(2) + '%',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: item.marketCapChangePercentage24H >= 0
                            ? Colors.green
                            : Colors.red),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
