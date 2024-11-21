import 'package:core_domain/src/domain/index/index_repository.dart';
import 'package:core_domain/src/domain/index/model/index_data.dart';
import 'package:core_domain/src/domain/index/model/index_type.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllIndexDataUseCase {
  GetAllIndexDataUseCase(this._indexRepository);

  final IndexRepository _indexRepository;

  Future<Result<List<IndexData>>> call({
    required IndexType indexType,
}) async {
    return _indexRepository.getAllIndexData(indexType: indexType);
  }
}
