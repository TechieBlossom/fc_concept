enum IndexType {
  forwards,
  midfielders,
  defenders,
  goalkeepers;

  String get title => switch (this) {
        IndexType.forwards => 'Forwards',
        IndexType.midfielders => 'Midfielders',
        IndexType.defenders => 'Defenders',
        IndexType.goalkeepers => 'Goalkeepers',
      };
}
