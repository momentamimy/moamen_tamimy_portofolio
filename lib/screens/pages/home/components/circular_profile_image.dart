import 'package:flutter/material.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';
import 'package:moamen_tamimy_portofolio/res.dart';

class CircularProfileImage extends StatelessWidget {
  final double? size;

  const CircularProfileImage({super.key,this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: size??AppSize.s300,
      width: size??AppSize.s300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size??AppSize.s300),
        image: const DecorationImage(
            image: AssetImage(Res.ProfileImage2), fit: BoxFit.cover),
      ),
    );
  }
}

