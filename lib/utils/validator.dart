import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

String? commonValidation(String value, String messageError) {
  String? msg;
  if (value.isEmpty) {
    msg = messageError;
  }
  return msg;
}

RequiredValidator emptyValidator(String errMsg) {
  return RequiredValidator(errorText: errMsg);
}

MultiValidator passwordValidator(String messageError) {
  return MultiValidator([
    RequiredValidator(errorText: messageError),
    MinLengthValidator(4,
        errorText: "Password should be at least 4 characters"),
    MaxLengthValidator(15,
        errorText: "Password should not be greater than 15 characters")
  ]);
}

MultiValidator idNumberValidator(String messageError) {
  return MultiValidator([
    RequiredValidator(errorText: messageError),
    MinLengthValidator(2,
        errorText: "ID number should be at least 2 characters"),
    MaxLengthValidator(20,
        errorText: "ID number cannot be more than 20 characters")
  ]);
}

MultiValidator emailValidator() {
  return MultiValidator([
    RequiredValidator(errorText: "Email is required"),
    EmailValidator(errorText: "Enter a valid email id"),
  ]);
}

MultiValidator mobValidator() {
  return MultiValidator([
    RequiredValidator(errorText: "Mobile number is required"),
    LengthRangeValidator(
        min: 10, max: 10, errorText: "Mobile number must be 10 digits"),
  ]);
}

String? requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return null;
}

void changeFocus(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
