import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WAppbar.dart';
import 'package:libraloom/module/homePage/controller/c_home_page.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

enum Platform { WEB, MOBILE, TAB }

class WScaffold extends StatelessWidget {
  final pageC = Get.put(CHomePage());

  final PreferredSizeWidget? appBar;
  final String? title;
  final Widget Function(BuildContext context, Orientation orientation, Platform platform)? body;
  final Widget? leading;
  final bool resizeToAvoidBottomInset;
  final Color bgColor;
  final bool bottomBar;

  WScaffold(
      {Key? key, this.appBar, this.title, this.body, this.leading, this.resizeToAvoidBottomInset = false, this.bgColor = Colors.white, this.bottomBar = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
        Platform platform = Platform.MOBILE;
        if (Get.width <= Const.MAX_MOBILE_SCREEN) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          platform = Platform.MOBILE;
        }
        return Scaffold(
          backgroundColor: bgColor,
          appBar: appBar != null
              ? appBar!
              : title != null
                  ? PreferredSize(
                      child: WAppbar(
                        title: Text(title!, style: Style.appBarTitle, overflow: TextOverflow.ellipsis),
                        leading: leading,
                      ),
                      preferredSize: const Size.fromHeight(kToolbarHeight))
                  : null,
          body: body!(context, orientation, platform),
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          bottomNavigationBar: bottomBar
              ? BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Style.greyColor,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("assets/icon/home.png"),
                          size: 30,
                          color: Color(0XFFF524C57),
                        ),
                        label: ('Home')),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("assets/icon/borrowing.png"),
                          size: 30,
                          color: Color(0XFFF524C57),
                        ),
                        label: ('Borrowing')),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("assets/icon/ribbon.png"),
                          color: Color(0XFFF524C57),
                          size: 34,
                        ),
                        label: ('Bookmark')),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("assets/icon/user.png"),
                          color: Color(0XFFF524C57),
                          size: 34,
                        ),
                        label: "Profile")
                  ],
                  currentIndex: pageC.pageIndex.value,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  selectedItemColor: Color(0XFFF524C57),
                  onTap: (int i) => pageC.changePage(i),
                )
              : null,
        );
      })),
    );
  }
}
