import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../widgets/text_column.dart';

class TrackingTextColumn extends StatelessWidget {
  const TrackingTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: AppStrings.title1,
      text: AppStrings.desc1,
    );
  }
}
