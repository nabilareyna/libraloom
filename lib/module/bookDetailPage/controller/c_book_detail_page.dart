import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CBookDetail extends GetxController {
  var bookmark = false.obs;

  DateTime dateLoan = DateTime.now();
  DateTime dateReturn = DateTime.now();

  TextEditingController loanDate = TextEditingController();
  Map<String, String> hari = {
    'Sunday': 'Minggu',
    'Monday': 'Senin',
    'Tuesday': 'Selasa',
    'Wednesday': 'Rabu',
    'Thursday': 'Kamis',
    'Friday': 'Jumat',
    'Saturday': 'Sabtu'
  };
  Map<String, String> bulan = {
    '1': 'Januari',
    '2': 'Februari',
    '3': 'Maret',
    '4': 'April',
    '5': 'Mei',
    '6': 'Juni',
    '7': 'Juli',
    '8': 'Agustus',
    '9': 'September',
    '10': 'Oktober',
    '11': 'November',
    '12': 'Desember',
  };

  @override
  void onInit() {
    super.onInit();
    loanDate.text = hari[DateFormat('EEEE').format(dateLoan)].toString() +
        ', ' +
        DateFormat('d').format(dateLoan) +
        ' ' +
        bulan[DateFormat('M').format(dateLoan)].toString() +
        ' ' +
        DateFormat('y').format(dateLoan);
  }
}
