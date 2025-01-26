import 'package:flutter/material.dart';
import 'package:paintroid/core/models/sort_option.dart';
import 'package:paintroid/ui/theme/theme.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;
  final SortOption currentSortOption;
  final ValueChanged<SortOption> onSortOptionSelected;

  const SearchTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
    required this.currentSortOption,
    required this.onSortOptionSelected,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller,
                focusNode: focusNode,
                autofocus: true,
                style:
                    TextStyle(color: PaintroidTheme.of(context).onSurfaceColor),
                decoration: InputDecoration(
                  hintText: 'Search projects...',
                  hintStyle: TextStyle(
                    color: PaintroidTheme.of(context)
                        .onSurfaceColor
                        .withOpacity(0.6),
                  ),
                  border: InputBorder.none,
                ),
                onChanged: onChanged,
              ),
            ],
          ),
        ),
        PopupMenuButton<SortOption>(
          icon: Icon(
            Icons.sort,
            color: PaintroidTheme.of(context).onSurfaceColor,
          ),
          tooltip: 'Sort options',
          onSelected: onSortOptionSelected,
          itemBuilder: (context) => SortOption.values
              .map(
                (option) => PopupMenuItem<SortOption>(
                  value: option,
                  child: Row(
                    children: [
                      Icon(
                        option == currentSortOption
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(option.label),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(width: 2),
      ],
    );
  }
}
