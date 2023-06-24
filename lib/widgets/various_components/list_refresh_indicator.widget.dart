import "package:custom_refresh_indicator/custom_refresh_indicator.dart";
import "package:flutter/material.dart";

class ListRefreshIndicator extends StatelessWidget {
  final Widget _child;
  final Future<void> Function() _onAction;
  final bool _isLoading;

  const ListRefreshIndicator({
    super.key,
    required Widget child,
    required Future<void> Function() onAction,
    required bool isLoading,
  })  : _isLoading = isLoading,
        _onAction = onAction,
        _child = child;

  @override
  Widget build(BuildContext context) {
    const double indicatorSize = 80.0;
    return CustomRefreshIndicator(
      offsetToArmed: indicatorSize / 2,
      onRefresh: _onAction,
      builder: (
        BuildContext context,
        Widget child,
        IndicatorController controller,
      ) {
        final double containerHeight =
            (_isLoading ? 1 : controller.value) * indicatorSize;
        return Stack(
          children: <Widget>[
            AnimatedBuilder(
              animation: controller,
              builder: (BuildContext context, Widget? _) {
                return Container(
                  padding: const EdgeInsets.only(top: kToolbarHeight / 2),
                  alignment: Alignment.center,
                  height: containerHeight,
                  child: OverflowBox(
                    maxHeight: 40,
                    minHeight: 40,
                    maxWidth: 40,
                    minWidth: 40,
                    child: !controller.state.isIdle || _isLoading
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 150),
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator(
                                value:
                                    controller.isDragging || controller.isArmed
                                        ? controller.value.clamp(0, 1)
                                        : null,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              builder: (BuildContext context, _) {
                return Transform.translate(
                  offset: Offset(0.0, containerHeight),
                  child: child,
                );
              },
              animation: controller,
            ),
          ],
        );
      },
      child: _child,
    );
  }
}
