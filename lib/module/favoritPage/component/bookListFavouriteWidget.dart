import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class BookListFavouriteWidget extends StatelessWidget {
  const BookListFavouriteWidget(
      {super.key, this.bookTitle, this.bookCategory, this.bookImage, this.bookAuthor, this.bookDescription, this.bookStock = "", this.bookRating = false});

  final String? bookImage;
  final String? bookTitle;
  final String? bookCategory;
  final String? bookDescription;
  final String? bookAuthor;
  final String bookStock;
  final bool bookRating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: Const.parentMargin()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(bookImage!),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    bookTitle!,
                    style: Style.bookTitle,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: Const.siblingMargin(x: 2)),
                    decoration: BoxDecoration(color: Color(0XFFFD9D9D9), borderRadius: BorderRadius.circular(20), boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 6,
                        offset: Offset(0, 4),
                      )
                    ]),
                    width: MediaQuery.of(context).size.width * 0.200,
                    height: 20,
                    child: Text(
                      bookCategory!,
                      style: TextStyle(fontFamily: 'Poppins', color: Color(0XFFFDFDFD), fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 200,
                height: 77,
                child: Text(
                  bookDescription!,
                  style: Style.bookDesc,
                ),
              ),
              Text(
                bookAuthor!,
                style: Style.bookDescSecondary,
              ),
              SizedBox(
                height: 10,
              ),
              bookRating!
                  ? RatingBar.builder(
                      direction: Axis.horizontal,
                      itemSize: 24,
                      initialRating: 4,
                      allowHalfRating: true,
                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: (value) {},
                    )
                  : Text(
                      "Stock: " + bookStock,
                      style: Style.bookDescSecondary,
                    )
            ],
          )
        ],
      ),
    );
  }
}
