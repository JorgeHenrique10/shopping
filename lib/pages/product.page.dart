import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final double price;

  ProductPage({
    this.title,
    this.description,
    this.image,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(description),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Nike Dry-fit sdjlxLNSXnx SXNsjxn XahgX SHKshhACBDBJDBJ CSJJ edjwjdhwekd wkdhkjwehkwk",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
