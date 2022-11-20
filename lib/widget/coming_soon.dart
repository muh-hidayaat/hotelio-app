import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotelio/config/app_asset.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppAsset.logo,
          ),
          const SizedBox(height: 20),
          Text(
            'Coming Soon',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
          ),
          const SizedBox(height: 20),
          Text(
            'We are devoloping thi page \nfor new great feature',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
