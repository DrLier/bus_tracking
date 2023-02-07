import 'package:email_password_login/model/sport_field.dart';
import 'package:email_password_login/model/user.dart';

class FieldOrder {
  SportField field;
  User user;
  String selectedDate;
  List<String> selectedTime;
  bool paidStatus;

  FieldOrder(
      {required this.field,
      required this.user,
      required this.selectedDate,
      required this.selectedTime,
      this.paidStatus = false});
}
