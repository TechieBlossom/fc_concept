import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    super.key,
    required this.filterConfiguration,
  });

  final FilterConfiguration? filterConfiguration;

  String? get gender => filterConfiguration?.genders
      ?.map((gender) => gender.toValue())
      .join(', ');

  String? get foot =>
      filterConfiguration?.foots?.map((foot) => foot.toValue()).join(', ');

  String? get rating => filterConfiguration?.overallRatingRange != null
      ? '${filterConfiguration!.overallRatingRange.start.toInt()} - ${filterConfiguration!.overallRatingRange.end.toInt()}'
      : null;

  String? get positions => filterConfiguration?.positions
      ?.map((position) => position.shortLabel)
      .join(', ');

  String? get rarities =>
      filterConfiguration?.rarities?.map((rarity) => rarity.name).join(', ');

  String? get roles =>
      filterConfiguration?.roles?.map((role) => role.name).join(', ');

  String? get playStyles => filterConfiguration?.playStyles
      .map((playStyle) => playStyle.name)
      .join(', ');

  String? get leagues =>
      filterConfiguration?.leagues?.map((league) => league.name).join(', ');

  String? get nations =>
      filterConfiguration?.nations?.map((nation) => nation.name).join(', ');

  String? get clubs =>
      filterConfiguration?.clubs?.map((club) => club.name).join(', ');

  bool get hasFilters => filterConfiguration?.hasFilters() ?? false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSpacing.space5),
      child: Row(
        mainAxisAlignment:
            hasFilters ? MainAxisAlignment.start : MainAxisAlignment.center,
        children: [
          Text(
            'Filters: ${hasFilters ? '' : 'No filters selected'}',
            style: context.typography.caption1.copyWith(
              color: context.colors.contentPrimary,
            ),
          ),
          if (hasFilters)
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: AppSpacing.space2),
                    if (rating != null) _FilterPill(label: 'Rating: $rating'),
                    if (gender?.isNotEmpty ?? false)
                      _FilterPill(label: 'Gender: $gender'),
                    if (foot?.isNotEmpty ?? false)
                      _FilterPill(label: 'Foot: $foot'),
                    if (positions?.isNotEmpty ?? false)
                      _FilterPill(label: 'Positions: $positions'),
                    if (rarities?.isNotEmpty ?? false)
                      _FilterPill(label: 'Rarity: $rarities'),
                    if (roles?.isNotEmpty ?? false)
                      _FilterPill(label: 'Roles: $roles'),
                    if (playStyles?.isNotEmpty ?? false)
                      _FilterPill(label: 'Play Styles: $playStyles'),
                    if (leagues?.isNotEmpty ?? false)
                      _FilterPill(label: 'Leagues: $leagues'),
                    if (clubs?.isNotEmpty ?? false)
                      _FilterPill(label: 'Clubs: $clubs'),
                    if (nations?.isNotEmpty ?? false)
                      _FilterPill(label: 'Nations: $nations'),
                    const SizedBox(width: AppSpacing.space5),
                  ]
                      .intersperse(
                        const SizedBox(width: AppSpacing.space2),
                      )
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _FilterPill extends StatelessWidget {
  const _FilterPill({
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space2,
        vertical: AppSpacing.space2,
      ),
      child: Text(
        label,
        style: context.typography.caption2.copyWith(
          color: context.colors.onPrimary,
        ),
      ),
    );
  }
}
