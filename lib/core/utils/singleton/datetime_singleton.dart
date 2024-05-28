import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ecommerce_project_chienbm/core/src_core.dart';

class DateTimeFormat {
  static DateTimeFormat? _instance;

  factory DateTimeFormat() => _instance ??= DateTimeFormat._();

  DateTimeFormat._();

  DateTime convertTimeStampToDate(int timer) =>
      DateTime.fromMillisecondsSinceEpoch(timer * 1000);

  Future<DateTime?> showDateTimePickerMaterial({DateTime? dateInitial}) async {
    return await showDatePicker(
      context: Get.context!,
      initialDate: dateInitial ?? DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2099),
      
    );
  }

  String convertTimeStampToString(int timeStamp,String pattern){
    return convertToString(convertTimeStampToDate(timeStamp), pattern);
  }

  String convertToString(DateTime? dateTime, String pattern,
      {bool isTextDefault = true}) {
    if (dateTime == null) {
      if (isTextDefault) {
        return AppStr.defaultDateInValid;
      }
      return "";
    }
    return DateFormat(pattern).format(dateTime);
  }

  DateTime? convertStringToDate(
      String dateTimeString, String patternOfDateString) {
    try {
      return DateFormat(patternOfDateString).parse(dateTimeString);
    } catch (e) {
      return null;
    }
  }
}
