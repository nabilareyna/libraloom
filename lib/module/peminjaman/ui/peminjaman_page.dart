import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WScaffold.dart';
import 'package:libraloom/module/peminjaman/component/borrowedBookWidget.dart';
import 'package:libraloom/module/peminjaman/controller/c_peminjaman_page.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/const.dart';

class PeminjamanPage extends GetView<CPeminjamanPage> {
  const PeminjamanPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return WScaffold(
      title: "Borrowing",
      leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.homepage);
          },
          icon: Icon(
            Icons.chevron_left_sharp,
            size: 36,
          )),
      body: (context, orientation, platform) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(x: 0.2), vertical: Const.parentMargin(x: 2)),
            child: Column(
              children: [
                BorrowedBookWidget(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  loanDate: "Loan date : 18-01-2024",
                  returnDate: "Date of return : 23-01-2024",
                  status: "Delayed",
                ),
                BorrowedBookWidget(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  loanDate: "Loan date : 18-01-2024",
                  returnDate: "Date of return : 23-01-2024",
                  status: "Finished",
                ),
                BorrowedBookWidget(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  loanDate: "Loan date : 18-01-2024",
                  returnDate: "Date of return : 23-01-2024",
                  status: "Finished",
                ),
                BorrowedBookWidget(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  loanDate: "Loan date : 18-01-2024",
                  returnDate: "Date of return : 23-01-2024",
                  status: "Delayed",
                ),
                BorrowedBookWidget(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  loanDate: "Loan date : 18-01-2024",
                  returnDate: "Date of return : 23-01-2024",
                  status: "Finished",
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
