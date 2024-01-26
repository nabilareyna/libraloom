import 'package:get/get.dart';
import 'package:libraloom/module/bookDetailPage/controller/c_book_detail_page.dart';
import 'package:libraloom/module/bookDetailPage/ui/book_detail_page.dart';
import 'package:libraloom/module/categoryPage/ui/category_page.dart';
import 'package:libraloom/module/favoritPage/controller/c_favouritePage.dart';
import 'package:libraloom/module/favoritPage/ui/favouritePage.dart';
import 'package:libraloom/module/finishedPage/controller/c_finished_page.dart';
import 'package:libraloom/module/finishedPage/ui/finished_page.dart';
import 'package:libraloom/module/homePage/controller/c_home_page.dart';
import 'package:libraloom/module/homePage/ui/home_page.dart';
import 'package:libraloom/module/payment_page/controller/c_payment_page.dart';
import 'package:libraloom/module/payment_page/ui/payment_page.dart';
import 'package:libraloom/module/peminjaman/controller/c_peminjaman_page.dart';
import 'package:libraloom/module/peminjaman/ui/peminjaman_page.dart';
import 'package:libraloom/module/profilePage/controller/c_profile_page.dart';
import 'package:libraloom/module/profilePage/ui/profile_page.dart';
import 'package:libraloom/module/sign_up/controller/c_sign_up.dart';
import 'package:libraloom/module/sign_up/ui/sign_up.dart';
import 'package:libraloom/module/sign_in/controller/c_sign_in.dart';
import 'package:libraloom/module/sign_in/ui/sign_in.dart';
import 'package:libraloom/module/succes_page/ui/success_page.dart';
import 'package:libraloom/module/welcome_page/controller/c_welcomePage.dart';
import 'package:libraloom/module/welcome_page/ui/welcomePage.dart';

class Routes {
  static const String welcomepage = "/";
  static const String signup = "/signup";
  static const String signin = "/signin";
  static const String homepage = "/homepage";
  static const String peminjaman = "/peminjaman";
  static const String favorit = "/favorit";
  static const String profile = "/profile";
  static const String category = "/category";
  static const String bookDetail = "/book";
  static const String payment = "/payment";
  static const String success = "/success";
  static const String finished = "/finished";

  static String getWelcomePageRoute() => welcomepage;
  static String getSignInRoute() => signin;
  static String getSignUpRoute() => signup;
  static String getHomePageRoute() => homepage;
  static String getPeminjamanRoute() => peminjaman;
  static String getFavoritRoute() => favorit;
  static String getProfileRoute() => profile;
  static String getCategoryRoute() => category;
  static String getBookDetailRoute() => bookDetail;
  static String getPaymentRoute() => payment;
  static String getSuccessRoute() => success;
  static String getFinishedRoute() => finished;

  static List<GetPage> routes = [
    GetPage(
        name: welcomepage,
        page: () => const WelcomePage(),
        binding: BindingsBuilder(() {
          Get.put(CWelcomePage());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: signup,
        page: () => const SignUpPage(),
        binding: BindingsBuilder(() {
          Get.put(CSignUp());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: signin,
        page: () => const SignInPage(),
        binding: BindingsBuilder(() {
          Get.put(CSignIn());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: homepage,
        page: () => const HomePage(),
        binding: BindingsBuilder(() {
          Get.put(CHomePage());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: peminjaman,
        page: () => const PeminjamanPage(),
        binding: BindingsBuilder(() {
          Get.put(CPeminjamanPage());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: favorit,
        page: () => const FavouritePage(),
        binding: BindingsBuilder(() {
          Get.put(CFavouritePage());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: profile,
        page: () => const ProfilePage(),
        binding: BindingsBuilder(() {
          Get.put(CProfilePage());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: bookDetail,
        page: () => const BookDetailPage(),
        binding: BindingsBuilder(() {
          Get.put(CBookDetail());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: payment,
        page: () => const PaymentPage(),
        binding: BindingsBuilder(() {
          Get.put(CPaymentPage());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: finished,
        page: () => const FinishedPage(),
        binding: BindingsBuilder(() {
          Get.put(CFinishedPage());
        }),
        transition: Transition.fadeIn),
    GetPage(name: category, page: () => const CategoryPage(), transition: Transition.fadeIn),
    GetPage(name: success, page: () => const SuccessPage(), transition: Transition.fadeIn),
  ];
}
