import 'package:flutter/material.dart';
import 'package:libraloom/utils/const.dart';
import 'package:readmore/readmore.dart';

class BookDescriptionWidget extends StatelessWidget {
  const BookDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      margin: EdgeInsets.only(top: Const.parentMargin(x: 11)),
      padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(), vertical: Const.siblingMargin(x: 8)),
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Description", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 24)),
          ReadMoreText(
            trimLength: 150,
            trimLines: 4,
            trimMode: TrimMode.Length,
            trimCollapsedText: "Selengkapnya",
            trimExpandedText: "Tampilkan Lebih Sedikit",
            lessStyle: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 16, color: Color(0XFFF1557FF)),
            moreStyle: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 16, color: Color(0XFFF1557FF)),
            "Buku “Nusantara: Sejarah Indonesia” yang diterbitkan pada tahun 1943 ini membahas sejarah Indonesia dari periode prasejarah hingga masa penjajahan kolonial Belanda.",
            style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 16),
          )
        ],
      ),
    );
  }
}
