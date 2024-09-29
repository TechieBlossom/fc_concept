import 'package:core_domain/src/domain/play_styles/model/play_style.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayStylesByIdsUseCase {
  const GetPlayStylesByIdsUseCase();

  List<PlayStyle> call({
    required List<PlayStyle> allPlayStyles,
    required List<int> eaIds,
  }) =>
      allPlayStyles.where((role) => eaIds.contains(role.eaId)).toList();
}
