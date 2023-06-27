import "package:flutter/material.dart";

class DropdownWidget<T> extends StatelessWidget {
  final T? _value;
  final List<T> _items;
  final void Function(T?)? _onChanged;
  final DropdownMenuItem<T> Function(T) _mapFunction;
  final Widget? _hint;

  const DropdownWidget({
    super.key,
    required List<T> items,
    required void Function(T?)? onChanged,
    required T? value,
    required DropdownMenuItem<T> Function(T) mapFunction,
    required Widget? hint,
  })  : _hint = hint,
        _mapFunction = mapFunction,
        _onChanged = onChanged,
        _items = items,
        _value = value;

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
            hint: _hint,
            value: _value,
            items: <DropdownMenuItem<T>>[..._items.map(_mapFunction)],
            onChanged: _onChanged,
          ),
        ),
      ),
    );
  }
}
