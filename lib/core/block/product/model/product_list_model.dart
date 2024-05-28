// import 'package:ecommerce_project_chienbm/feature/src_feature.dart';

// class ProductModel {
//   ProductModel({
//     this.id,
//     this.brandId,
//     this.brandName,
//     this.brandUrl,
//     this.urlVideo,
//     this.typeVideo,
//     this.files,
//     this.width,
//     this.widthUnit,
//     this.length,
//     this.lengthUnit,
//     this.height,
//     this.heightUnit,
//     this.weight,
//     this.weightUnit,
//     this.view,
//     this.like,
//     this.mainCategoryId,
//     this.rating,
//     this.ratingNumber,
//     this.comment,
//     this.featured,
//     this.catalogue,
//     this.position,
//     this.status,
//     this.draft,
//     this.seoScore,
//     this.keywordScore,
//     this.created,
//     this.updated,
//     this.createdBy,
//     this.createdByUser,
//     this.name,
//     this.description,
//     this.content,
//     this.tags = const [],
//     this.seoTitle,
//     this.seoDescription,
//     this.seoKeyword,
//     this.lang,
//     this.urlId,
//     this.url,
//     this.items = const [],
//     this.numberItem,
//     this.allImages = const [],
//     this.totalQuantityAvailable,
//   });

//   final int? id;
//   final dynamic brandId;
//   final dynamic brandName;
//   final dynamic brandUrl;
//   final dynamic urlVideo;
//   final dynamic typeVideo;
//   final dynamic files;
//   final dynamic width;
//   final dynamic widthUnit;
//   final dynamic length;
//   final dynamic lengthUnit;
//   final dynamic height;
//   final dynamic heightUnit;
//   final dynamic weight;
//   final dynamic weightUnit;
//   final int? view;
//   final dynamic like;
//   final dynamic mainCategoryId;
//   final dynamic rating;
//   final dynamic ratingNumber;
//   final dynamic comment;
//   final int? featured;
//   final int? catalogue;
//   final int? position;
//   final int? status;
//   final int? draft;
//   final dynamic seoScore;
//   final dynamic keywordScore;
//   final String? created;
//   final dynamic updated;
//   final int? createdBy;
//   final dynamic createdByUser;
//   final String? name;
//   final dynamic description;
//   final dynamic content;
//   final List<dynamic> tags;
//   final dynamic seoTitle;
//   final dynamic seoDescription;
//   final dynamic seoKeyword;
//   final String? lang;
//   final int? urlId;
//   final String? url;
//   final List<ProductItem> items;
//   final int? numberItem;
//   final List<String> allImages;
//   final int? totalQuantityAvailable;

//   factory ProductModel.fromJson(Map<String, dynamic> json) {
//     return ProductModel(
//       id: json["id"],
//       brandId: json["brand_id"],
//       brandName: json["brand_name"],
//       brandUrl: json["brand_url"],
//       urlVideo: json["url_video"],
//       typeVideo: json["type_video"],
//       files: json["files"],
//       width: json["width"],
//       widthUnit: json["width_unit"],
//       length: json["length"],
//       lengthUnit: json["length_unit"],
//       height: json["height"],
//       heightUnit: json["height_unit"],
//       weight: json["weight"],
//       weightUnit: json["weight_unit"],
//       view: json["view"],
//       like: json["like"],
//       mainCategoryId: json["main_category_id"],
//       rating: json["rating"],
//       ratingNumber: json["rating_number"],
//       comment: json["comment"],
//       featured: json["featured"],
//       catalogue: json["catalogue"],
//       position: json["position"],
//       status: json["status"],
//       draft: json["draft"],
//       seoScore: json["seo_score"],
//       keywordScore: json["keyword_score"],
//       created: json["created"],
//       updated: json["updated"],
//       createdBy: json["created_by"],
//       createdByUser: json["created_by_user"],
//       name: json["name"],
//       description: json["description"],
//       content: json["content"],
//       tags: json["tags"] == null
//           ? []
//           : List<dynamic>.from(json["tags"]!.map((x) => x)),
//       seoTitle: json["seo_title"],
//       seoDescription: json["seo_description"],
//       seoKeyword: json["seo_keyword"],
//       lang: json["lang"],
//       urlId: json["url_id"],
//       url: json["url"],
//       items: json["items"] == null
//           ? []
//           : List<ProductItem>.from(
//               json["items"]!.map((x) => ProductItem.fromJson(x))),
//       numberItem: json["number_item"],
//       allImages: json["all_images"] is Map
//           ? Map<String, String>.from(json["all_images"]).values.toList()
//           : List<String>.from(json["all_images"] ?? []),
//       totalQuantityAvailable: json["total_quantity_available"],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "brand_id": brandId,
//         "brand_name": brandName,
//         "brand_url": brandUrl,
//         "url_video": urlVideo,
//         "type_video": typeVideo,
//         "files": files,
//         "width": width,
//         "width_unit": widthUnit,
//         "length": length,
//         "length_unit": lengthUnit,
//         "height": height,
//         "height_unit": heightUnit,
//         "weight": weight,
//         "weight_unit": weightUnit,
//         "view": view,
//         "like": like,
//         "main_category_id": mainCategoryId,
//         "rating": rating,
//         "rating_number": ratingNumber,
//         "comment": comment,
//         "featured": featured,
//         "catalogue": catalogue,
//         "position": position,
//         "status": status,
//         "draft": draft,
//         "seo_score": seoScore,
//         "keyword_score": keywordScore,
//         "created": created,
//         "updated": updated,
//         "created_by": createdBy,
//         "created_by_user": createdByUser,
//         "name": name,
//         "description": description,
//         "content": content,
//         "tags": tags.map((x) => x).toList(),
//         "seo_title": seoTitle,
//         "seo_description": seoDescription,
//         "seo_keyword": seoKeyword,
//         "lang": lang,
//         "url_id": urlId,
//         "url": url,
//         "items": items.map((x) => x.toJson()).toList(),
//         "number_item": numberItem,
//         //TODO: TẠM THỜI COMMENT LẠI
//         // "all_images":
//         //     Map.from(allImages).map((k, v) => MapEntry<String, dynamic>(k, v)),
//         "total_quantity_available": totalQuantityAvailable,
//       };
// }
