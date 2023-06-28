import "package:flutter/material.dart";

extension IsPortrait on BuildContext {
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
}
