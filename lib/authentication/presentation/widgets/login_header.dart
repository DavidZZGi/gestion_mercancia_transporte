import 'package:flutter/material.dart';

import '../../../app/utils/style/style.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            'Bienvenido',
            style: Style.textBodyLarge,
          ),
        ),
      ],
    );
  }
}
