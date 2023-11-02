import 'package:apc/src/core/_core.dart';
import 'package:go_router/go_router.dart';
import '../../_{{name.snakeCase()}}.dart';

List<RouteBase> {{name.camelCase()}}Routes = [
  GoRoute(
    path: RoutePath.{{name.pascalCase()}},
    builder: (context, state) => const {{name.pascalCase()}}Page(),
  ),
];