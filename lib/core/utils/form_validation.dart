import '../constants/app_strings.dart';

class FormValidationRegex {
  static RegExp phoneNumberRegex = RegExp(
      r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$');
  static RegExp emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static RegExp passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  static RegExp nameRegExp = RegExp(r'^[a-z A-Z]+$');

  static String? emailNdPhoneValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter Email or Phone";
    }
    String? isEmail = emailValidate(value);
    if (isEmail == null) {
      return isEmail;
    }
    String? isPhone = phoneValidate(value);
    if (isPhone == null) {
      return isPhone;
    }
    return "Invalid Email or Phone number";
  }
  static String? emptyCheck(String? value, String? msg){
    if (value == null || value.isEmpty) {
      return "${AppStrings.cantEmpty} $msg";
    }
    return null;
  }

  static String? fullNameValidate(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.cantEmpty;
    }
    if (!nameRegExp.hasMatch(value)) {
      return AppStrings.specialCharNot;
    }
    return null;
  }

  static String? passwordValidate(String? value, {String? msg}) {
    if (value == null || value.isEmpty) {
      return msg ?? AppStrings.enterPassword;
    }
    if (value.length < 8) {
      return AppStrings.pwdMinChar;
    }
    return null;
  }

  static String? emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.enterEmail;
    }
    if (!emailRegex.hasMatch(value)) {
      return AppStrings.emailNotValid;
    }
    return null;
  }

  static String? phoneValidate(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.phone;
    }
    if (!phoneNumberRegex.hasMatch(value)) {
      return AppStrings.phoneNotValid;
    }
    return null;
  }
}
