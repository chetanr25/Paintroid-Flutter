import 'package:flutter/material.dart';

class SearchToggleButton extends StatelessWidget {
  final bool isSearchActive;
  final VoidCallback onSearchStart;
  final VoidCallback onSearchEnd;

  const SearchToggleButton({
    super.key,
    required this.isSearchActive,
    required this.onSearchStart,
    required this.onSearchEnd,
  });

  @override
  Widget build(BuildContext context) {
    if (isSearchActive) {
      return IconButton(
        icon: const Icon(Icons.close),
        onPressed: onSearchEnd,
      );
    }
    return IconButton(
      icon: const Icon(Icons.search),
      onPressed: onSearchStart,
    );
  }
}
