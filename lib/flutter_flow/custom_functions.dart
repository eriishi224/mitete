import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String returnProfileGreeting(DateTime timestamp) {
  // return "morning" if it is morning, "afternoon" if afternoon and "night" if it is night
  var hour = timestamp.hour;
  if (hour >= 0 && hour < 12) {
    return "Good morning,";
  } else if (hour >= 12 && hour < 17) {
    return "Good afternoon,";
  } else {
    return "Goodnight,";
  }
}

DateTime addDaysToDate(
  DateTime today,
  int daysToadd,
) {
  // add days to today
  return today.add(Duration(days: daysToadd));
}

String? getWeekFromDate(DateTime? date) {
  // return weekday from date as Japanese
  if (date == null) {
    return null;
  }

  final weekdays = ['月', '火', '水', '木', '金', '土', '日'];
  final weekdayIndex = date.weekday;
  return weekdays[weekdayIndex - 1];
}

DateTime dateTimetoday(DateTime date) {
  // return datetime only yyyymmdd
  return DateTime(date.year, date.month, date.day);
}

String? convertListToText(List<String>? textList) {
  // return text list split by comma from textList
  if (textList == null || textList.isEmpty) {
    return null;
  }

  return textList.join(', ');
}

String? calculateAge(String? birthday) {
  // Calculate age from entered date of birth
  if (birthday == null || birthday.isEmpty) {
    return null;
  }

  DateTime today = DateTime.now();
  DateTime birthDate = DateTime.parse(birthday);
  int age = today.year - birthDate.year;
  if (today.month < birthDate.month ||
      (today.month == birthDate.month && today.day < birthDate.day)) {
    age--;
  }

  return age.toString();
}

String? displayDate(String? date) {
  // change to only month and day
  if (date == null || date.isEmpty) {
    return null;
  }

  DateTime dateTime = DateTime.parse(date);
  String formattedDate = DateFormat('MM月dd日').format(dateTime);
  return formattedDate;
}

int countMinute(
  DateTime startTime,
  DateTime endTime,
) {
  //  count minute start to end
  Duration duration = endTime.difference(startTime);
  int minutes = duration.inMinutes;
  return minutes;
}

String? calculateTax(String? price) {
  //  Calculate the consumption tax . Tax rate is 10% .
  if (price == null || price.isEmpty) {
    return null;
  }

  double priceValue = double.parse(price);
  double tax = priceValue * 0.10;
  return tax.toStringAsFixed(2);
}

int? calculateTotalPayment(String? price) {
  // Calculate the price including tax, tax rate is 10%. Round down to the nearest whole number.
  if (price == null) {
    return null;
  }

  double priceDouble = double.tryParse(price) ?? 0.0;
  double taxRate = 0.10;
  double taxAmount = priceDouble * taxRate;
  double totalAmount = priceDouble + taxAmount;

  return totalAmount.floor();
}

String? multiplication(
  String? a,
  String? b,
) {
  //  multiplication A and B
  // Check if both inputs are not null or empty
  if (a == null || b == null || a.isEmpty || b.isEmpty) {
    return null;
  }

  // Parse the inputs to double
  double aValue = double.tryParse(a) ?? 0;
  double bValue = double.tryParse(b) ?? 0;

  // Perform the multiplication
  double result = aValue * bValue;

  // Return the result as a string
  return result.toString();
}

String? findPrefNameFromResponse(
  String apiResponse,
  String prefCode,
) {
  RegExp regExp =
      RegExp(r'\{prefCode: ' + prefCode.toString() + r', prefName: ([^}]+)\}');
  Match? match = regExp.firstMatch(apiResponse);

  // マッチした場合はprefNameを返す
  if (match != null && match.groupCount >= 1) {
    return match.group(1);
  }

  // マッチしなかった場合はnullを返す
  return null;
}

bool isTimeWithinRange(
  DateTime? firestoreStartTime,
  DateTime? firestoreEndTime,
  DateTime? appStateStartTime,
  DateTime? appStateEndTime,
) {
// bookable(firestore) start_time is less than Appstate's endTime The end_time of bookable (firestore) is greater than or equal to Appstate's startTime
  if (firestoreStartTime == null ||
      firestoreEndTime == null ||
      appStateStartTime == null ||
      appStateEndTime == null) {
    return false;
  }

  return firestoreStartTime.isBefore(appStateEndTime) &&
      firestoreEndTime.isAfter(appStateStartTime);
}

String? convertDatetimeToString(DateTime? dateTime) {
  //  Convert datetime type to string
  if (dateTime != null) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  } else {
    return null;
  }
}

int? timeDifferenceAandB(
  DateTime? a,
  DateTime? b,
) {
  // Time(minute) difference between A and B.
  if (a == null || b == null) {
    return null;
  }

  int difference = b.difference(a).inMinutes;
  return difference;
}
