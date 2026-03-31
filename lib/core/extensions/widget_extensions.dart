import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

extension WidgetExtension on Widget {
  Widget shimmer({bool isLoading = true}) {
    if (!isLoading) return this;

    return Shimmer.fromColors(
      baseColor: const Color(0xFFEAECF0),
      highlightColor: Colors.white,
      child: this,
    );
  }
}
