import 'package:flutter/material.dart';

class DropdownWidget<T> extends StatelessWidget {
  final T? value;
  final List<T> items;
  final void Function(T?)? onChanged;
  final DropdownMenuItem<T> Function(T) mapFunction;
  final Widget? hint;

  const DropdownWidget({
    super.key,
    required this.items,
    required this.onChanged,
    required this.value,
    required this.mapFunction,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<T>(
            focusColor: Colors.transparent,
            borderRadius: BorderRadius.circular(7),
            hint: hint,
            value: value,
            items: [...items.map(mapFunction)],
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
