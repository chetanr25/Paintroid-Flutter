enum SortOption {
  nameAsc,
  nameDesc,
  dateModifiedNewest,
  dateModifiedOldest,
  dateCreatedNewest,
  dateCreatedOldest;

  String get label {
    switch (this) {
      case SortOption.nameAsc:
        return 'Name (A to Z)';
      case SortOption.nameDesc:
        return 'Name (Z to A)';
      case SortOption.dateModifiedNewest:
        return 'Last Modified (Newest)';
      case SortOption.dateModifiedOldest:
        return 'Last Modified (Oldest)';
      case SortOption.dateCreatedNewest:
        return 'Date Created (Newest)';
      case SortOption.dateCreatedOldest:
        return 'Date Created (Oldest)';
    }
  }
}
