import 'package:flutter/material.dart';

dynamic customShowDialog({
  required BuildContext context,
  required String title,
  required String content,
  required void Function()? onPressed,
  bool showCancelButton = false,
}) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: Theme.of(context).primaryColorDark,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      content: Text(
        content,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: <Widget>[
        showCancelButton
            ? TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'إلغاء',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Theme.of(context).primaryColor),
                ),
              )
            // ignore: dead_code
            : Container(),
        TextButton(
          onPressed: onPressed ?? () => Navigator.of(context).pop(),
          child: Text(
            'موافق',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).primaryColor),
          ),
        ),
      ],
    ),
  );
}
