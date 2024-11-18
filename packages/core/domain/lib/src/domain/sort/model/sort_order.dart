enum SortOrder {
  ascending,
  descending;

  String get title => switch (this) {
    SortOrder.ascending => 'Ascending',
    SortOrder.descending => 'Descending',
  };
}