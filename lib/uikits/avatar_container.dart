import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AvatarContainer extends StatefulWidget {
  const AvatarContainer({Key? key}) : super(key: key);

  @override
  State<AvatarContainer> createState() => _AvatarContainerState();
}

class _AvatarContainerState extends State<AvatarContainer> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: const Color.fromRGBO(110, 201, 230, 1),
        highlightColor: const Color.fromRGBO(110, 201, 230, 1).withOpacity(0.5),
        period: const Duration(seconds: 5),
        child: Container(
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 4, color: const Color.fromRGBO(110, 201, 230, 1)),
              shape: BoxShape.circle,
              color: Colors.amber),
        ));
  }
}
