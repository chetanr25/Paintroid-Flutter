import 'package:flutter/material.dart';
import 'package:paintroid/ui/theme/theme.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;

  const SearchTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      autofocus: true,
      style: TextStyle(color: PaintroidTheme.of(context).onSurfaceColor),
      decoration: InputDecoration(
        hintText: 'Search projects...',
        hintStyle: TextStyle(
          color: PaintroidTheme.of(context).onSurfaceColor.withOpacity(0.6),
        ),
        border: InputBorder.none,
      ),
      onChanged: onChanged,
    );
  }
}
