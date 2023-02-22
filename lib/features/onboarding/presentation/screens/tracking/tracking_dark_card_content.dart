import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/assets_manager.dart';

class TrackingDarkCardContent extends StatelessWidget {
  const TrackingDarkCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(ImageAssets.babyFly);
  }
}
