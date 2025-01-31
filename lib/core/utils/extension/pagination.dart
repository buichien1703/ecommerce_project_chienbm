import 'package:ecommerce_project_chienbm/core/src_core.dart';

extension PaginationExtension on Pagination? {
  bool get canLoadMore =>
      (this != null && ((this?.page) ?? 0) < ((this?.pages) ?? 0));
}
