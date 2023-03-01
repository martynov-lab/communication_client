import 'package:communication_client/app/domain/app_api.dart';
import 'package:communication_client/feature/post/domain/entities/post/post_entity.dart';
import 'package:communication_client/feature/post/domain/repository/post_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostRepository)
@prod
@dev
class NetworkPostService implements PostRepository {
  final AppApi api;

  NetworkPostService(this.api);
  @override
  Future<Iterable> fetchPosts() async {
    try {
      final response = await api.fetchPosts();
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<PostEntity> fetchPost(String id) async {
    try {
      final response = await api.fetchPost(id);
      return PostEntity.fromJson(response.data["data"]);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> createPost(Map args) async {
    try {
      final response = await api.createPost(args);
      return response.data["message "];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future deletePost(String id) async {
    try {
      await api.deletePost(id);
    } catch (_) {
      rethrow;
    }
  }
}
