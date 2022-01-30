import 'package:auto_route/annotations.dart';
import 'package:simple_consume_api/presentation/pages/detail_page.dart';
import 'package:simple_consume_api/presentation/pages/homepage.dart';

@MaterialAutoRouter(
    routes: <AutoRoute> [
      AutoRoute(page: HomePage,initial: true),
      AutoRoute(page: DetailPage)
    ]
)
class $Router {
}