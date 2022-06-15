import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

import '../../themes/app_text_styles.dart';

class BottonSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secundaryOnPressed;
  final String title;
  final String subtitle;
  const BottonSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secundaryOnPressed,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                  child: Container(color: Colors.black.withOpacity(0.6)),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Text.rich(
                      TextSpan(
                          text: title,
                          style: TextStyles.buttonBoldHeading,
                          children: [
                            TextSpan(
                                text: "\n$subtitle",
                                style: TextStyles.buttonHeading),
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: AppColors.stroke,
                  ),
                  SetLabelButtons(
                      enablePrimaryColor: true,
                      primaryLabel: primaryLabel,
                      primaryOnPressed: primaryOnPressed,
                      secondaryLabel: secondaryLabel,
                      secundaryOnPressed: secundaryOnPressed),
                  SizedBox(height: 2),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
