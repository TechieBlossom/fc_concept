import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Versions extends StatelessWidget {
  const Versions({
    super.key,
    required this.ids,
    required this.selectedVersion,
    required this.onItemTap,
  });

  final List<(int, int, String)>? ids;
  final int? selectedVersion;
  final void Function(int, int) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: ids?.map(
            (id) {
              final playerId = id.$1;
              final versionId = id.$2;
              return Padding(
                padding: spacingS.horizontal,
                child: VersionImage(
                  id: versionId,
                  isHighlighted: selectedVersion == versionId,
                  onTap: () => onItemTap(playerId, versionId),
                ),
              );
            },
          ).toList() ??
          [],
    );
  }
}
