import 'package:flutter/material.dart';
import 'package:tempomylife_web/common_widget/show_alert_dialog.dart';

Future<void> showExceptionAlertDialog(
  BuildContext context, {
  required String title,
  required Exception exception,
}) =>
    showAlertDialog(
      context,
      title: title,
      content: exception.toString(), //_message(exception),
      defaultActionText: 'OK',
    );


/* String? _message(Exception exception) {
  if (exception is FirebaseException) {
    return exception.message;
  }
  return exception.toString();
} */

