import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paintroid/core/models/sort_option.dart';

final searchActiveProvider = StateProvider<bool>((ref) => false);
final searchQueryProvider = StateProvider<String>((ref) => '');
final sortOptionProvider = StateProvider<SortOption>(
  (ref) => SortOption.dateModifiedNewest,
);
