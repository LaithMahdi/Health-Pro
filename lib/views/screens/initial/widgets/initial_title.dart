import 'package:flutter/material.dart';

class InitialTitle extends StatelessWidget {
  const InitialTitle({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 15),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
