import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/bloc/nested_filter_bloc.dart';
import 'package:flutter/material.dart';

class NestedFilterLayout<T extends NestedFilterLayoutType>
    extends StatelessWidget {
  const NestedFilterLayout({
    super.key,
    required this.topItems,
    required this.otherItems,
    required this.selectedItems,
  });

  final List<T>? topItems;
  final List<T>? otherItems;
  final List<T>? selectedItems;

  // bool get isNation => T.runtimeType == Nation;
  //
  // bool get isLeague => T.runtimeType == League;
  //
  // bool get isClub => T.runtimeType == Club;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (topItems?.isNotEmpty ?? false)
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppSpacing.space5,
            ),
            child: FilterGroup<T>(
              title: 'Top',
              pillItems: topItems!
                  .map(
                    (item) => PillItem<T>(
                      data: item,
                      text: item.name,
                      image: item.runtimeType == Nation
                          ? NationImage(nation: item as Nation)
                          : item.runtimeType == League
                              ? LeagueImage(league: item as League)
                              : null,
                      isSelected: selectedItems?.contains(item) ?? false,
                      onTap: () => context.read<NestedFilterBloc>().add(
                            SelectItem(item: item),
                          ),
                    ),
                  )
                  .toList(),
            ),
          ),
        if (otherItems?.isNotEmpty ?? false)
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppSpacing.space9,
            ),
            child: FilterGroup(
              title: 'Other',
              pillItems: otherItems!
                  .map(
                    (item) => PillItem<T>(
                      data: item,
                      text: item.name,
                      image: item.runtimeType == Nation
                          ? NationImage(nation: item as Nation)
                          : item.runtimeType == League
                              ? LeagueImage(league: item as League)
                              : null,
                      isSelected: selectedItems?.contains(item) ?? false,
                      onTap: () => context.read<NestedFilterBloc>().add(
                            SelectItem(
                              item: item,
                            ),
                          ),
                    ),
                  )
                  .toList(),
            ),
          ),
      ],
    );
  }
}
