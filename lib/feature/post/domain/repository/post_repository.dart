abstract class PostRepository {
  Future fetchPosts();
  Future fetchPost(String id);
  Future deletePost(String id);
  Future createPost(Map args);
}
