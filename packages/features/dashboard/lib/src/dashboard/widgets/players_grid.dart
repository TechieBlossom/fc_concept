import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayersGrid extends StatelessWidget {
  const PlayersGrid({
    super.key,
    required this.players,
    required this.heading,
    required this.onTap,
    this.pills,
    this.isLoading = false,
    this.trailing,
  });

  final bool isLoading;
  final List<Player>? players;
  final String heading;
  final Widget? pills;
  final Widget? trailing;
  final void Function(Player) onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      crossFadeState:
          isLoading ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: const _LoadingState(),
      secondChild: _Content(
        players: players,
        heading: heading,
        pills: pills,
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Space(space: AppSpacing.space5),
        ShimmerFilterGroup(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.space5),
        ),
        ShimmerListItem(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.space5),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.players,
    required this.heading,
    required this.onTap,
    this.trailing,
    this.pills,
  });

  final List<Player>? players;
  final String heading;
  final Widget? pills;
  final Widget? trailing;
  final void Function(Player) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: pills == null
          ? 270
          : (players?.isEmpty ?? true)
              ? 161
              : 270 + 36 + 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.space5,
              right: AppSpacing.space5,
              bottom: AppSpacing.space3,
            ),
            child: Row(
              children: [
                Text(
                  heading,
                  style: context.typography.headline.copyWith(
                    color: context.colors.contentPrimary,
                  ),
                ),
                if (trailing != null) ...[
                  const Spacer(),
                  trailing!,
                ],
              ],
            ),
          ),
          if (pills != null)
            Padding(
              padding: const EdgeInsets.only(
                top: AppSpacing.space2,
                bottom: AppSpacing.space4,
              ),
              child: pills,
            ),
          if (players?.isEmpty ?? true)
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSpacing.space5),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.space5,
                  vertical: AppSpacing.space7,
                ),
                decoration: BoxDecoration(
                  color: context.colors.backgroundSecondary,
                  borderRadius: BorderRadius.circular(AppSpacing.space3),
                ),
                child: Text(
                  'No players found',
                  textAlign: TextAlign.center,
                  style: context.typography.body1.copyWith(
                    color: context.colors.contentPrimary,
                  ),
                ),
              ),
            )
          else
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: AppSpacing.space5,
                ),
                itemCount: players?.length,
                itemBuilder: (context, index) {
                  final player = players![index];
                  return Padding(
                    padding: EdgeInsets.only(
                      left: AppSpacing.space3,
                      right: (index >= players!.length - 2)
                          ? AppSpacing.space3
                          : 0,
                    ),
                    child:
                        PlayerBox(player: player, onTap: () => onTap(player)),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
