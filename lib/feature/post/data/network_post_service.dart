import 'package:communication_client/app/domain/app_api.dart';
import 'package:communication_client/feature/post/domain/repository/post_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostRepository)
@prod
@dev
class NetworkPostService implements PostRepository {
  final AppApi api;

  NetworkPostService(this.api);
  @override
  Future<Iterable> fetchPost() async {
    try {
      final response = await api.fetchPosts();
      return response.data;
    } catch (_) {
      rethrow;
    }
  }
}
