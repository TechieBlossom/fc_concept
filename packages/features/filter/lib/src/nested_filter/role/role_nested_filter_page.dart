import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/role/bloc/role_nested_filter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

const String pageTitle = 'Select Role(s)';

class RoleNestedFilterPageParams {
  RoleNestedFilterPageParams({
    this.items,
  });

  final List<Role>? items;
}

class RoleNestedFilterPage extends StatelessWidget {
  const RoleNestedFilterPage({
    super.key,
    required this.roleNestedFilterPageParams,
  });

  final RoleNestedFilterPageParams roleNestedFilterPageParams;

  @override
  Widget build(BuildContext context) {
    final allRoles = context.read<MetadataBloc>().state.roles;
    return BlocProvider<RoleNestedFilterBloc>(
      create: (_) => di<RoleNestedFilterBloc>(
        param1: roleNestedFilterPageParams,
        param2: allRoles,
      ),
      child: BlocBuilder<RoleNestedFilterBloc, RoleNestedFilterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const PageTitle(title: pageTitle),
            bottomNavigationBar: BottomButtonLayout(
              isLoading: state.processState == ProcessState.loading,
              buttons: [
                SecondaryButton(
                  text: 'Clear',
                  onPressed: () {},
                ),
                PrimaryButton(
                  text: 'Done',
                  onPressed: () => context.read<RoleNestedFilterBloc>().add(
                        Done(),
                      ),
                ),
              ],
            ),
            body: switch (state.processState) {
              ProcessState.success => Stack(
                  fit: StackFit.expand,
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: AppSpacing.space9,
                        ),
                        child: FilterGroup(
                          pillItems: state.roles!
                              .map(
                                (item) => PillItem<Role>(
                                  data: item,
                                  text: '${item.name} | ${item.positionName}',
                                  isSelected: (state.selectedRoles ??
                                              roleNestedFilterPageParams.items)
                                          ?.contains(item) ??
                                      false,
                                  onTap: () =>
                                      context.read<RoleNestedFilterBloc>().add(
                                            SelectRole(
                                              item: item,
                                            ),
                                          ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ProcessState.loading => const LoadingList(
                  loadingListType: LoadingListType.filterGroup,
                  count: 1,
                ),
              _ => const SizedBox.shrink(),
            },
          );
        },
      ),
    );
  }
}
