import 'package:flutter/material.dart';

import '../../../app/utils/style/style.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            'Bienvenido',
            style: Style.textBodyMedium,
          ),
        ),
      ],
    );
  }
}