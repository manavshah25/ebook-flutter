import 'package:ebookreader/screens/details_screen.dart';
import 'package:ebookreader/screens/pdf_book.dart';
import 'package:ebookreader/screens/reader_screen.dart';
import 'package:ebookreader/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../backcolor.dart';
import '../widgets/readiing_card_list.dart';
import '../widgets/two_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * .1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall,
                        children: [
                          TextSpan(text: "What are you \n reading "),
                          TextSpan(
                            text: "today?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          image: 'assets/images/book-1.png',
                          title: 'Crushing & Influence',
                          auth: 'Gary Venchuk',
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },

                          pressRead: () {

                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return PdfBook();
                            }));
                          },
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-2.png',
                          title: "Top Ten Business Hacks",
                          auth: 'Herman Joel',
                          rating: 4.8,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },

                          pressRead: () {

                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return PdfBook();
                            }));
                          },
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-4.png',
                          title: "Games of Thrones: House of the Dragon",
                          auth: 'George R.R. Martin',
                          rating: 4.7,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },

                          pressRead: () {

                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return PdfBook();
                            }));
                          },
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-6.png',
                          title: "The-blood-red-ruby",
                          auth: 'Evelyn-j-steward',
                          rating: 4.8,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },

                          pressRead: () {

                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return PdfBook();
                            }));
                          },
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-5.png',
                          title: "Harry Potter and the Socrerces Stone",
                          auth: 'J.k. Rowling',
                          rating: 4.8,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },

                          pressRead: () {

                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return PdfBook();
                            }));
                          },
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.displaySmall,
                              children: [
                                TextSpan(text: "Best of the "),
                                TextSpan(
                                  text: "day",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                        bestoftheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                              TextSpan(text: "Continue"),
                              TextSpan(
                                  text: " reading..",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3D3).withOpacity(.84),
                                ),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Gary Venchuk",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              )
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/images/book-1.png",
                                          width: 55,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .6,
                                  decoration: BoxDecoration(
                                    color: kProgressIndication,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestoftheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(fontSize: 9, color: kLightBlackColor),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "How to Win \nFriends & Influence",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Gary venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      BookRating(score: 4.9),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people... ",
                          maxLines: 3,
                          overflow:TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                width: size.width * .3,
                child: TwoSideRoundedButton(
                  text: "Read",
                  radious: 24,
                  press: () {},
                ),
              ))
        ],
      ),
    );
  }
}
