import 'package:flutter/material.dart';
import 'package:vodafone_ui/shared/app_styles.dart';
import 'package:vodafone_ui/shared/constants.dart';
import 'package:vodafone_ui/shared/extensions/widget_extensions.dart';

class DataUsageCard extends StatelessWidget {
  const DataUsageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFFBFBFB),
        border: Border.all(
          color: const Color(0xFFF3F3F3),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppIcons.wirelessIcon),
          24.0.sbH,
          LinearProgressIndicator(
            value: 1 - (AppStrings.remainingData / AppStrings.totalData),
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
            backgroundColor: const Color(0xffDADADA),
            valueColor: const AlwaysStoppedAnimation<Color>(
              AppColors.vodafoneRed,
            ),
          ),
          14.0.sbH,
          Text(
            "Your data",
            style: AppStyles().cardSubtitle,
          ),
          4.0.sbH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: '${AppStrings.remainingData} ',
                  // style: TextStyle(fontSize: 15, color: Colors.black),
                  style: AppStyles().cardTitle.copyWith(fontSize: 16),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'GB left',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'of ',
                  style: AppStyles().cardSubtitle,
                  children: const <TextSpan>[
                    TextSpan(
                      text: '${AppStrings.totalData} ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'GB',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
