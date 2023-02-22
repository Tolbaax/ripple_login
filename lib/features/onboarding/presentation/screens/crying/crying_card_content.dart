import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/assets_manager.dart';

class CryingDarkCardContent extends StatelessWidget {
  const CryingDarkCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      ImageAssets.sleep,
      reverse: true,
    );
  }
}
