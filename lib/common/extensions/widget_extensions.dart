import "package:flutter/material.dart";
import "package:skeletons/skeletons.dart";

extension ImageLoadingBuilder on Widget {
  Widget imageLoadingBuilder(_, Widget child, ImageChunkEvent? event) {
    return event is! ImageChunkEvent ? child : const SkeletonAvatar();
  }
}
