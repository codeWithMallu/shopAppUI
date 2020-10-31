import 'package:flutter/material.dart';

class BottomStackContainer extends StatelessWidget {
  BottomStackContainer({
    this.title,
    this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height *0.4,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            ContainerStackItem(title: title, price: price),
            BottomCart(),
          ],
        ),
      ),
    );
  }
}

class BottomCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Icon(Icons.favorite_border),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), shape: BoxShape.circle),
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            label: Text(
              "Add to Basket",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, letterSpacing: 1),
            ),
            color: Colors.pink[100],
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 6,
                vertical: 10),
          )
        ],
      ),
    );
  }
}

class ContainerStackItem extends StatelessWidget {
  ContainerStackItem({
    this.title,
    this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ILLUM"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                Text("\$$price",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SIZE"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("16 OZ",
                          style: TextStyle(
                            fontSize: 22,
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("QTY"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("1",
                          style: TextStyle(
                            fontSize: 22,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: Text(
                "Details",
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: Text(
                "Shipping & Returns",
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
