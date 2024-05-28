// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';

// class ProductBlockModel {
//   ProductBlockModel({
//     this.data = const [],
//     this.pagination,
//   });

//   final List<ProductBlockData> data;
//   final Pagination? pagination;

//   factory ProductBlockModel.fromJson(Map<String, dynamic> json) {
//     return ProductBlockModel(
//       data: json["data"] == null
//           ? []
//           : List<ProductBlockData>.from(
//               json["data"]!.map((x) => ProductBlockData.fromJson(x))),
//       pagination: json["pagination"] == null
//           ? null
//           : json["pagination"] is List
//               ? null
//               : Pagination.fromJson(json["pagination"]!),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "data": data.map((x) => x.toJson()).toList(),
//         "pagination": pagination?.toJson(),
//       };
// }

// class ProductBlockData {
//   ProductBlockData({
//     this.id,
//     this.name,
//     this.description,
//     this.urlVideo,
//     this.typeVideo,
//     this.files,
//     this.rating,
//     this.ratingNumber,
//     this.view,
//     this.created,
//     this.createdBy,
//     this.featured,
//     this.url,
//     this.categories = const [],
//     this.attributes,
//     this.price,
//     this.priceSpecial,
//     this.applySpecial,
//     this.discountPercent,
//     this.items = const [],
//     this.numberItem,
//     this.allImages = const [],
//     this.totalQuantityAvailable,
//     this.attributesItemApply = const [],
//     this.attributesItemSpecial = const [],
//   });

//   final int? id;
//   final String? name;
//   final String? description;
//   final dynamic urlVideo;
//   final dynamic typeVideo;
//   final dynamic files;
//   final int? rating;
//   final int? ratingNumber;
//   final int? view;
//   final String? created;
//   final int? createdBy;
//   final int? featured;
//   final String? url;
//   final List<Category> categories;
//   final dynamic attributes;
//   final int? price;
//   final int? priceSpecial;
//   final bool? applySpecial;
//   final double? discountPercent;
//   final List<ProductItem> items;
//   final int? numberItem;
//   final List<String> allImages;
//   final int? totalQuantityAvailable;
//   final List<AttributesItemApply> attributesItemApply;
//   final List<ProductItem> attributesItemSpecial;

//   factory ProductBlockData.fromProductModel(ProductModel productModel) {
//     return ProductBlockData(
//         id: productModel.id,
//         name: productModel.name,
//         allImages: productModel.allImages.toList(),
//         description: productModel.description,
//         applySpecial: productModel.items.first.applySpecial,
//         attributes: productModel.items.first.attributes,
//         createdBy: productModel.createdBy,
//         featured: productModel.featured,
//         files: productModel.files,
//         attributesItemSpecial: productModel.items,
//         items: productModel.items,
//         numberItem: productModel.numberItem,
//         price: productModel.items.first.price,
//         priceSpecial: productModel.items.first.priceSpecial,
//         discountPercent:
//             double.tryParse(productModel.items.first.discountPercent ?? "") ??
//                 0,
//         rating: productModel.rating,
//         ratingNumber: productModel.ratingNumber,
//         totalQuantityAvailable: productModel.totalQuantityAvailable,
//         typeVideo: productModel.typeVideo,
//         url: productModel.url,
//         urlVideo: productModel.urlVideo,
//         view: productModel.view);
//   }

//   factory ProductBlockData.fromJson(Map<String, dynamic> json) {
//     return ProductBlockData(
//       id: json["id"],
//       name: json["name"],
//       description: json["description"],
//       urlVideo: json["url_video"],
//       typeVideo: json["type_video"],
//       files: json["files"],
//       rating: json["rating"],
//       ratingNumber: json["rating_number"],
//       view: json["view"],
//       created: json["created"]?.toString() ?? "",
//       createdBy: json["created_by"],
//       featured: json["featured"],
//       url: json["url"],
//       categories: json["categories"] is Map
//           ? (Map.from(json["categories"]))
//               .values
//               .map((e) => Category.fromJson(e))
//               .toList()
//           : json["categories"] == null
//               ? []
//               : List<Category>.from(
//                   json["categories"]!.map((x) => Category.fromJson(x))),
//       attributes: json["attributes"],
//       price: json["price"],
//       priceSpecial: json["price_special"],
//       applySpecial: json["apply_special"],
//       discountPercent:
//           double.tryParse(json["discount_percent"].toString()) ?? 0,
//       items: json["items"] == null
//           ? []
//           : List<ProductItem>.from(
//               json["items"]!.map((x) => ProductItem.fromJson(x))),
//       numberItem: json["number_item"],
//       allImages: json["all_images"] is Map
//           ? (Map.from(json["all_images"])
//               .values
//               .map((e) => e.toString())
//               .toList())
//           : json["all_images"] == null
//               ? []
//               : List<String>.from(json["all_images"]!.map((x) => x)),
//       totalQuantityAvailable: json["total_quantity_available"],
//       attributesItemApply: json["attributes_item_apply"] == null
//           ? []
//           : List<AttributesItemApply>.from(json["attributes_item_apply"]!
//               .map((x) => AttributesItemApply.fromJson(x))),
//       attributesItemSpecial: json["attributes_item_special"] == null
//           ? []
//           : List<ProductItem>.from(json["attributes_item_special"]!
//               .map((x) => ProductItem.fromJson(x))),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "description": description,
//         "url_video": urlVideo,
//         "type_video": typeVideo,
//         "files": files,
//         "rating": rating,
//         "rating_number": ratingNumber,
//         "view": view,
//         "created": created,
//         "created_by": createdBy,
//         "featured": featured,
//         "url": url,
//         "categories": categories.map((x) => x.toJson()).toList(),
//         "attributes": attributes,
//         "price": price,
//         "price_special": priceSpecial,
//         "apply_special": applySpecial,
//         "discount_percent": discountPercent,
//         "items": items.map((x) => x.toJson()).toList(),
//         "number_item": numberItem,
//         "all_images": allImages.map((x) => x).toList(),
//         "total_quantity_available": totalQuantityAvailable,
//         "attributes_item_apply":
//             attributesItemApply.map((x) => x.toJson()).toList(),
//         "attributes_item_special":
//             attributesItemSpecial.map((x) => x.toJson()).toList(),
//       };
// }

// class AttributesNormalClass {
//   AttributesNormalClass({
//     this.size,
//   });

//   final AttributesItemApply? size;

//   factory AttributesNormalClass.fromJson(Map<String, dynamic> json) {
//     return AttributesNormalClass(
//       size: json["size"] == null
//           ? null
//           : AttributesItemApply.fromJson(json["size"]),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "size": size?.toJson(),
//       };
// }
