import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

/// Catalog tree node, up to three levels deep (TZ §5.5).
@freezed
abstract class Category with _$Category {
  const factory Category({
    required String slug,
    required String name,
    String? iconUrl,
    @Default(<Category>[]) List<Category> children,
  }) = _Category;

  const Category._();

  bool get isLeaf => children.isEmpty;
}

@freezed
abstract class CategoryTree with _$CategoryTree {
  const factory CategoryTree({
    required List<Category> roots,
    required DateTime fetchedAt,
    @Default(false) bool isFromCache,
  }) = _CategoryTree;

  const CategoryTree._();

  /// Depth-first lookup; `null` when the slug is not in the tree.
  Category? find(String slug) {
    Category? search(List<Category> nodes) {
      for (final node in nodes) {
        if (node.slug == slug) return node;
        final found = search(node.children);
        if (found != null) return found;
      }
      return null;
    }

    return search(roots);
  }
}
