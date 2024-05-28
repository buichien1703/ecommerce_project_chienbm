// import 'dart:convert';

// import 'package:ecommerce_project_chienbm/feature/src_feature.dart';

// class CategoryProductRequest {
//   CategoryProductRequest({
//     required this.categoryId,
//     this.productFilter,
//   });

//   final ProductFilter? productFilter;

//   final int categoryId;a

//   CategoryProductRequest copyWith({
//     int? categoryId,
//   }) {
//     return CategoryProductRequest(
//       categoryId: categoryId ?? this.categoryId,
//     );
//   }

//   factory CategoryProductRequest.fromJson(Map<String, dynamic> json) {
//     return CategoryProductRequest(
//       categoryId: json["category_id"],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "category_id": categoryId,
//         "params": jsonEncode(productFilter?.toJson()),
//       };

//   @override
//   String toString() => 'CategoryProductRequest(categoryId: $categoryId)';
// }
