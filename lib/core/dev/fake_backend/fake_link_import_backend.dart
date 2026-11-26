import 'fake_api_params.dart';
import 'fake_catalog_backend.dart';

/// Dev stand-in for «Товар по ссылке» (TZ §5.9).
///
/// Every link maps to a generated catalog product, so the product page
/// that opens afterwards is a real one. A third of the links are «already
/// in the catalog» and open at once; the rest become a task that passes
/// the three steps over [_stepTime] each. Links with `fail` in them (and
/// a few others) fail, and the server hands them to an operator.
class FakeLinkImportBackend {
  FakeLinkImportBackend({DateTime Function()? now})
    : _now = now ?? DateTime.now;

  final DateTime Function() _now;
  final _catalog = FakeCatalogBackend();
  final _tasks = <String, _Task>{};

  static const _stepTime = Duration(seconds: 2);
  static const _steps = ['opening', 'translating', 'pricing'];

  /// Leaves with products to stand in for imported ones.
  static const _leaves = [
    'shoes-men-sneakers',
    'el-audio-headphones',
    'clothes-women-dresses',
    'el-smart-watches',
    'sport-outdoor-backpacks',
  ];

  /// `{product_id}` when known, else `{task_id}`.
  Map<String, dynamic> start(String link) {
    final hash = link.hashCode.abs();
    final productId = _productFor(hash);
    if (hash % 3 == 0 && !_fails(link)) return {'product_id': productId};
    final id = 'task-${_tasks.length + 1}';
    _tasks[id] = _Task(
      startedAt: _now(),
      productId: productId,
      fails: _fails(link),
    );
    return {'task_id': id};
  }

  /// `{status: pending, step}`, `{status: done, product_id}` or
  /// `{status: failed}`.
  Map<String, dynamic> status(String taskId) {
    final task = _tasks[taskId];
    if (task == null) return {'status': 'failed'};
    final passed = _now().difference(task.startedAt);
    final step = passed.inMilliseconds ~/ _stepTime.inMilliseconds;
    if (task.fails && step >= 2) return {'status': 'failed'};
    return step < _steps.length
        ? {'status': 'pending', 'step': _steps[step]}
        : {'status': 'done', 'product_id': task.productId};
  }

  static bool _fails(String link) =>
      link.contains('fail') || link.hashCode.abs() % 7 == 0;

  String _productFor(int hash) {
    final leaf = _leaves[hash % _leaves.length];
    final items =
        _catalog.products('ru', {FakeApiParams.category: leaf})['items']
            as List<dynamic>;
    final item = items[hash % items.length] as Map<String, dynamic>;
    return item['id'] as String;
  }
}

class _Task {
  const _Task({
    required this.startedAt,
    required this.productId,
    required this.fails,
  });

  final DateTime startedAt;
  final String productId;
  final bool fails;
}
