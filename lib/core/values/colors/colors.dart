import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_project_chienbm/core/src_core.dart';

class AppColors {
  static AppColors? _instance;

  factory AppColors() => _instance ??= AppColors._internal();

  AppColors._internal();

  static bool isDarkMode() => Get.isDarkMode;

  // //Hàm để trong baseTheme phải truyền giá trị vào để phân biệt giao diện
  // static Color accentColorTheme(bool isDark) =>
  //     isDark ? darkAccentColor : lightAccentColor;

  // // Những biến sử dụng trong app phải đảm bảo màu cho 2 giao diện sáng/tối
  // static bool _isDarkMode() => false;
  // static Color textColor() => _isDarkMode() ? Colors.white : Colors.black;
  // static Color textHomeColor() =>
  //     _isDarkMode() ? Colors.white : darkAccentColor;
  // static Color errorText() => _isDarkMode() ? errorTextColor : Colors.redAccent;
  // static Color errorTextHistory() =>
  //     _isDarkMode() ? errorTextColor : Colors.redAccent;
  // static Color selectedInvoice() =>
  //     _isDarkMode() ? blueIconColor : orangeSelected;
  // static Color? selectedInvoicePressed() =>
  //     _isDarkMode() ? null : orangeSelected;

  // static Color leftBarChart() =>
  //     _isDarkMode() ? Colors.white30 : darkAccentColor;
  // static Color titleDataBarChart() =>
  //     _isDarkMode() ? Colors.white30 : bgKeyBoardbtn;
  // static Color textReColor() => _isDarkMode() ? Colors.black : Colors.white;
  // static Color hintTextColor() =>
  //     _isDarkMode() ? Colors.white54 : Colors.black54;
  // static Color dialogInvExtend() =>
  //     _isDarkMode() ? darkAccentColor : Colors.white;
  // static Color appBarColor() =>
  //     _isDarkMode() ? darkAccentColor : lightAccentColor;
  // static Color keyBoardColor() =>
  //     _isDarkMode() ? darkAccentColor : const Color(0xFFff7e5f);
  // static Color splashColor() => _isDarkMode() ? darkAccentColor : orange;
  // static Color subTextColor() =>
  //     _isDarkMode() ? Colors.white54 : Colors.black87;
  // static Color statusBarColor() =>
  //     _isDarkMode() ? darkAccentColor : colorBackgroundLight;
  // static Color dateTimeColor() =>
  //     _isDarkMode() ? darkPrimaryColor : const Color(0xFFf7f7f7);
  // static Color cardBackgroundColor() =>
  //     _isDarkMode() ? darkPrimaryColor : Colors.white;
  // static Color linkText() => _isDarkMode() ? colorBlueAccent : orange;
  // static Color invoiceStickyHead() => _isDarkMode() ? colorBlueB1FF : orange;
  // static Color cardBackgroundOrange() =>
  //     _isDarkMode() ? backgroundColor : const Color(0xffFF772E);
  // static Color cardBorderColor() =>
  //     _isDarkMode() ? darkAccentColor : Colors.white70;
  // static Color? dividerColor() => _isDarkMode() ? null : darkAccentColor;
  // static Color cardColors() => _isDarkMode() ? cardColor : Colors.white;
  // static Color iconHomeSelectColor() =>
  //     _isDarkMode() ? Colors.white : darkAccentColor;
  // static Color backgroundHomeColor() =>
  //     _isDarkMode() ? darkAccentColor : Colors.white;
  // static Color slideActionColor() =>
  //     _isDarkMode() ? darkAccentColor : bgSlideColorLight;
  // static Color iconHomeColor() => _isDarkMode() ? Colors.white54 : Colors.grey;
  // static Color inputText() =>
  //     _isDarkMode() ? darkPrimaryColor : lightAccentColor;
  // static Color inputTextBottomSheet() =>
  //     _isDarkMode() ? darkPrimaryColor : const Color(0xffefefef);
  // static Color inputQuickInvoice() =>
  //     _isDarkMode() ? darkAccentColor : const Color(0xffefefef);
  // static Color inputInvExtra() =>
  //     _isDarkMode() ? darkAccentColor : lightAccentColor;
  // static Color inputTextWhite() =>
  //     _isDarkMode() ? darkPrimaryColor : Colors.white;
  // static Color bgInputText() =>
  //     _isDarkMode() ? bgInputTextColor : lightAccentColor;
  // static Color bottomSheet() => _isDarkMode() ? buttonColor : Colors.white;
  // static Color primaryColor() =>
  //     _isDarkMode() ? darkPrimaryColor : Colors.white;
  // static Color chipColorTheme() =>
  //     _isDarkMode() ? backgroundColor : Colors.blue.shade100;
  // static Color iconEmpty() => _isDarkMode() ? Colors.white30 : orangeShade;
  // static Color appBarInvoice() => _isDarkMode() ? darkAccentColor : orange;
  // static Color selectedChip() =>
  //     _isDarkMode() ? backgroundSearchColor : lightPrimaryColor;
  // static Color titleBarChart() =>
  //     _isDarkMode() ? Colors.white30 : darkAccentColor;
  // static Color barChart() => _isDarkMode() ? backgroundSearchColor : chipColor;
  // static Color stickyHead() =>
  //     _isDarkMode() ? backgroundColor : lightAccentColor;
  // static Color dateTimeHistory() =>
  //     _isDarkMode() ? backgroundColor : const Color(0x40f0eff2);
  // static Color invoiceStatusWait() =>
  //     _isDarkMode() ? const Color(0x6688c6ed) : const Color(0xff088aec);
  // static Color invoiceStatusNewly() =>
  //     _isDarkMode() ? const Color(0x6682c341) : const Color(0xff44aca0);
  // static Color invoiceStatusPublished() =>
  //     _isDarkMode() ? const Color(0x66009f75) : const Color(0xff34a853);
  // static Color invoiceStatusTaxDeclared() =>
  //     _isDarkMode() ? const Color(0x66394BA0) : const Color(0xff394BA0);
  // static Color invoiceStatusReplaced() =>
  //     _isDarkMode() ? const Color(0x80EF4444) : const Color(0xffEF4444);
  // static Color invoiceStatusHandle() =>
  //     _isDarkMode() ? Colors.purple.shade300 : const Color(0xFFfd754a);
  // static Color invoiceStatusCanceled() =>
  //     _isDarkMode() ? const Color(0x80EF4444) : const Color(0xffe73526);
  // static Color invoiceStatusApproved() =>
  //     _isDarkMode() ? const Color(0xffD54799) : const Color(0xff690fbb);
  // static Color invoiceList() => _isDarkMode() ? bgInputTextColor : Colors.white;
  // static Color textSearchInvProfile() =>
  //     _isDarkMode() ? Colors.white : Colors.indigo.shade700;
  // static Color borderColor() => _isDarkMode() ? darkAccentColor : Colors.white;
  // static Color statusBarInvoice() => _isDarkMode() ? darkAccentColor : orange;

  // static Color selectedProduct() =>
  //     _isDarkMode() ? blueIconColor : const Color(0x77f88754);
  // static Color spinboxColor() => _isDarkMode() ? Colors.white : chipColor;
  // static Color invoiceListOver() =>
  //     _isDarkMode() ? Colors.redAccent : Colors.white;
  // static Color borderCard() =>
  //     _isDarkMode() ? Colors.transparent : prefixIconColor;
  // static Color noSerialCert() =>
  //     _isDarkMode() ? chipColor : const Color(0xff1390e5);
  // static Color filterTextTabbar() =>
  //     _isDarkMode() ? Colors.white : colorBlueAccent;
  // static Color backgroundTabbarColor() =>
  //     _isDarkMode() ? darkAccentColor : orange;
  // static Color colorInputText() =>
  //     _isDarkMode() ? const Color(0xff333333) : const Color(0xff333333);

  // static List<Color> searchInvoice() =>
  //     _isDarkMode() ? colorGradientOrange : [Colors.white, Colors.white];
  // static List<Color> barChartEmpty() =>
  //     _isDarkMode() ? colorGradientGrey : colorGradientGrey;
  // static List<Color> barChartData() =>
  //     _isDarkMode() ? colorGradientBlue : colorGradientIconHome;
  // static List<Color> barReChartData() =>
  //     _isDarkMode() ? colorGradientIconHome : colorGradientBlue;
  // static List<Color> removeFilter() =>
  //     _isDarkMode() ? colorGradientGray : colorGradientGrey;
  // // for Light Theme
  // static const lightPrimaryColor = Color(0xFF0074bd);
  // static const stockLightPrimaryColor = Color(0x330074bd);
  // static Color borderLightPrimaryColor = const Color(0xFF0074bd).withAlpha(50);
  // static Color lightColor = const Color(0xFF0074bd).withAlpha(10);
  // static Color lightGrey = Colors.grey.shade200;
  // static const lightSecondColor = Color(0xFFeb5624);
  // static const lightAccentColor = Color(0xFFf0eff2);
  // static const stickyHeadLight = Color(0xFFffffff);

  // for Light Theme
  static const darkPrimaryColor = Color(0xFF3e4161);
  static const darkAccentColor = Color(0xFF25273f);

  static const Color colorLoading = Color(0xFF58a0ff);
  static const Color colorBackgroundLight = Color(0xFFf7f7f7);
  static const Color chipDisable = Color(0xFFefefef);
  static const Color orange = Color(0xFFe2530c);
  static const Color orangeShade = Color(0xFFfee0d6);

  // static const Color textColor = Colors.white;
  static const Color backgroundSearchColor = Color(0xFF596AFE);
  static const Color bgSlideColorLight = Color(0xFFf9f9f9);
  static const Color errorTextLogin = Colors.white;
  static const Color cardColor = Color(0xFF414465);
  static const Color systemIconColor = Color(0xFF77EDFE);
  static const Color calendarIconColor = Color(0xFF464E88);
  static const Color calendarIconColord = Color(0xFF281F1C);
  static const Color blueIconColor = Color(0xFF3b3e66);
  static const Color appBarColor1 = Color(0xFF333754);
  static const Color buttonColor = Color(0xFF25273f);
  static const Color buttonColor2 = Color(0x0ff3ffff);
  static const Color backgroundColor = Color(0xFF333753);
  static const Color bgInputTextColor = Color(0xFF3e4161);
  static const Color bgHighLight = Color(0x60FFFFFF);
  static const Color bgKeyBoard = Color(0xFF1f212d);
  static const Color unselectedLabelColor = Color(0xFF1f212d);
  static const Color bgKeyBoardbtn = Color(0xFF65686f);
  static const Color errorTextColor = Color(0xFFFFD54F);
  static const Color textColorWhite = Colors.white;
  static const Color colorHintText = Colors.white54;
  static const Color hintTextSolidColor = Color(0xCCFFFFFF);
  static final Color prefixIconColor = Colors.grey.shade500;
  static const Color prefixIconLogin = Colors.white;
  static const Color bgItemColor = Color(0xFF9ca4bc);
  static const Color textColorDefault = Color(0xFF111111);
  static const Color chipColor = Color(0xfff36f21);
  static const Color stockChipColor = Color(0x33f36f21);
  static const Color colorBlue = Color.fromRGBO(33, 150, 243, 1);
  static const Color colorBlue67ff = Color(0xFF5967ff);
  static const Color colorBlueAccent = Colors.blueAccent;
  static const Color titleText = Colors.white54;
  static const Color colorShowCaseIcon = Colors.white;
  static const Color colorShowCaseText = Colors.white;
  static const Color colorBackgroundShowCase = Colors.white30;
  static const Color colorError = Color(0xFFff5f6d);
  static const Color textColorIncrease = Color(0xFF06beb6);
  static const Color textColorDecrease = Color(0xFFd66d75);
  static const Color colorInvoicesReplaced = Color(0xffecbb00);
  static const Color orangeSelected = Color(0xFFff7e5f);
  static const Color colorRecord = Color(0xFFf37304);
  static const Color colorUnRecord = Color(0xffeaeaea);
  static const Color colorInvoicesAdjust = Color(0xFFff7e5f);
  static const Color colorGreenLight = Color(0xFF82c341);
  static const Color colorRed444 = Color(0xccEF4444);
  static const Color stockColorRed = Color(0x33D4145A);
  static const Color colorBlueB1FF = Color(0xE682B1FF);
  static const Color colorButtonBlue = Color.fromARGB(230, 60, 130, 243);
  static const Color colorInvoicesReplace = Color(0xffffd751);
  static const Color colorF4 = Color(0xfff4f4f4);
  static const Color colorIconDefault = Colors.black54;
  static const Color colorPurple = Colors.purple;
  static const Color colorSuccessGreen = Color(0xff09b409);
  static const Color stockColorSuccessGreen = Color(0x3309b409);
  static const Color colorPenddingInvoices = Color(0xFF4A2E99);
  static const Color colorBgWarningSync = Color(0xFFFFF3E7);
  static const Color colorTextWarningSync = Color(0xFFD49650);
  static const Color colorPrintBill = Colors.teal;
  static const Color colorTablePicked = Color(0xFF3577CC);
  static const Color colorBgTablePicked = Color(0xFFE9F5F9);
  static const Color colorBgTableUnPicked = Color(0xFFE7EBEE);
  static const Color colorIcTable = Color(0xFF8E9BA4);
  static const Color colorLoginBg = Colors.white;
  static const Color colorBlack = Colors.black;
  static const Color colorContainerWhite = Colors.white;
  static const Color colorTextForm = Color.fromARGB(255, 215, 225, 232);
  static const List<Color> colorGradientOrange = [
    Color(0xFFff7e5f),
    Color(0xFFff5f6d),
  ];
  // static const List<Color> colorSecondGradientOrange = [
  //   lightSecondColor,
  //   lightSecondColor,
  // ];

  static const List<Color> colorGradientBlue = [
    Color(0xFF58a0ff),
    Color(0xFF5967ff),
  ];
  static const List<Color> colorGradientBlueLogin = [
    Color(0xFF5967ff),
    Color(0xFF5967ff),
    // Color(0xFF596AFE),
  ];
  static const List<Color> colorGradientBlack = [
    Colors.black,
    Colors.black87,
  ];
  static const List<Color> colorGradientGrey = [
    Color(0xFF9ca4bc),
    Color(0xFF9ca4bc)
  ];
  static const List<Color> colorWhite = [
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 255, 255, 255)
  ];

  static const List<Color> colorGradientGray = [
    Color(0x20FFFFFF),
    Color(0x20FFFFFF),
  ];

  static const List<List<Color>> colorGradientList = [
    [Color(0xFFD4145A), Color(0xFFFBB03B)],
    [Color(0xFF4568dc), Color(0xFFb06ab3)],
    [Color(0xFF588be5), Color(0xFF3ac9dd)],
  ];
  static const List<Color> colorPieDashboard = [
    Color(0xFF2697fe),
    Color(0xffbf5efe),
    Color(0xFF19eaaa),
    Color(0xFFffcf27),
    Color(0xFFff6057),
  ];

  static const List<Color> colorStatusHistoryTitle = [
    Color(0xFF03A9F4),
    Color(0xFFff6057),
    Color(0xFF8DBD26),
  ];

  static const List<Color> colorGradientIconHome = [
    Color(0xFFfd754a),
    Color(0xFFfd8058),
  ];

  static List<Color> colorGradientBtn = [
    Colors.blue.shade200,
    Colors.teal.shade50,
  ];

  static const List<Color> colorGradientGreen = [
    Color.fromARGB(255, 43, 255, 191),
    Color.fromARGB(255, 0, 231, 162),
  ];

  // static Color textColor = appColor;

  // static Color appBarBackGroundColor =
  //     isDarkMode() ? ColorDark.primaryColor : ColorLight.primaryColor;

  // static Color iconColors = isDarkMode() ? Colors.white : Colors.black;

  // static Color colorBorderInput = appColor;

  // static Color textLabelInput = appColor;

  // static Color seeAllTextButtonColor = isDarkMode()
  //     ? ColorDark.seeAllTextButtonColor
  //     : ColorLight.seeAllTextButtonColor;

  // static Color cardBackGroundColor = isDarkMode()
  //     ? ColorDark.cardBackGroundColor
  //     : ColorLight.cardBackGroundColor;

  // static Color onBackground = isDarkMode()
  //     ? ColorDark.cardBackGroundColor
  //     : ColorLight.cardBackGroundColor;

  // static Color onPrimaryColor = isDarkMode() ? Colors.white : Colors.black;

  // static Color colorBackGroundInput = appColor.withOpacity(0.1);

  // static Color defaultColorBorderInput = ColorLight.defaultColorBorderInput;

  // static Color? get appBackgroundColor => ColorLight.primaryColor;

  // static Color borderCard =
  //     isDarkMode() ? ColorDark.primaryColor : ColorLight.primaryColor;

  // static Color get appColor =>
  //     isDarkMode() ? ColorDark.primaryColor : Colors.cyan;

  // static Color buttonBackgroundColor = appColor;

  // static Color cursorColorInput = isDarkMode() ? Colors.white : Colors.black;

  // static Color textColorInput = cursorColorInput;

  // static Color iconColorInput = cursorColorInput;

  //   static Color get primaryColor =>
  // isDarkMode() ? ColorDark.primaryColor : ColorLight.primaryColor;

  // HexColor.fromHex(ColorLight.startColors)!;

  // static Color? get buttonColorDefault => ColorLight.buttonDefaultColor;

  // static List<BoxShadow> listDefaultShadow = [
  //   BoxShadow(
  //     color: Colors.cyan.withOpacity(0.2), //color of shadow
  //     spreadRadius: 2, //spread radius
  //     blurRadius: 3, // blur radius
  //     offset: const Offset(0, 1), // changes position of shadow
  //     //first paramerter of offset is left-right
  //     //second parameter is top to down
  //   ),
  //   const BoxShadow(
  //     color: Colors.white, //color of shadow
  //     spreadRadius: 4, //spread radius
  //     blurRadius: 6, // blur radius
  //     offset: Offset(-2, -4), // changes position of shadow
  //     //first paramerter of offset is left-right
  //     //second parameter is top to down
  //   ),
  // ];

  // static const List<BoxShadow> listBoxShadowInput = [
  //   BoxShadow(
  //     color: Colors.black12,
  //     blurRadius: 4,
  //     spreadRadius: 0.5,
  //     offset: Offset(4, 4), // Shadow position
  //   ),
  // ];
}
