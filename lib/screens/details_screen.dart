import 'package:ebookreader/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                details_card(
                      title: "Crushing & Influence",
                      image: "assets/images/book-1.png",
                      rating: 4.9,
                      desc: "When the earth was flat and everyone wanted to win the game of the best and people... ", size:Size(double.infinity, 1040),

                ),
                details_card(
                  title: "Top Ten Business Hacks",
                  image: "assets/images/book-2.png",
                  rating: 4.8,
                  desc: "When the earth was flat and everyone wanted to win the game of the best and people... ", size:Size(double.infinity, 1040),

                ),
                details_card(
                  title: "Games of Thrones: House of the Dragon",
                  image: "assets/images/book-4.png",
                  rating: 4.7,
                  desc: "When the earth was flat and everyone wanted to win the game of the best and people... ", size:Size(double.infinity, 1040),

                ),
                details_card(
                  title: "The-blood-red-ruby",
                  image: "assets/images/book-6.png",
                  rating: 4.8,
                  desc: "When the earth was flat and everyone wanted to win the game of the best and people... ", size:Size(double.infinity, 1040),

                ),
                details_card(
                  title: "Harry Potter and the Socrerces Stone",
                  image: "assets/images/book-5.png",
                  rating: 4.8,
                  desc: "When the earth was flat and everyone wanted to win the game of the best and people... ", size:Size(double.infinity, 1040),

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class details_card extends StatelessWidget {
  final String title;
  final String image;
  final double rating;
  final String desc;
  const details_card({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.desc,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .7,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.fitWidth,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * .1,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                     title,
                      style:
                          Theme.of(context).textTheme.displaySmall,
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(desc)

                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border),
                            ),
                            BookRating(score: rating),
                          ],
                        )
                      ],
                    )

                  ],
                )),
                Image.asset(
                  image,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
