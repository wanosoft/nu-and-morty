import 'package:flutter/material.dart';
import 'package:nu_and_morty/core/presentation/internationalization.dart';

class NuDialog extends StatelessWidget {
  const NuDialog({
    required this.title,
    required this.onConfirm,
    required this.onDeny,
    Key? key,
  }) : super(key: key);

  final String title;
  final VoidCallback onConfirm, onDeny;

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(title),
        actions: [
          MaterialButton(
            child: Text(Internationalization.yes),
            onPressed: onConfirm,
          ),
          MaterialButton(
            child: Text(Internationalization.no),
            onPressed: onDeny,
          ),
        ],
      );
}
