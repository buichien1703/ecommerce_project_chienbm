class CategoryBlockModel {
  CategoryBlockModel({
    this.data = const [],
    this.maxLevel,
  });

  final List<CategoryBlockData> data;
  final int? maxLevel;

  factory CategoryBlockModel.fromJson(Map<String, dynamic> json) {
    return CategoryBlockModel(
      data: json["data"] == null
          ? []
          : List<CategoryBlockData>.from(json["data"]!.map((x) => CategoryBlockData.fromJson(x))),
      maxLevel: json["max_level"],
    );
  }

  Map<String, dynamic> toJson() => {
        "data": data.map((x) => x.toJson()).toList(),
        "max_level": maxLevel,
      };
}

class CategoryBlockData {
  CategoryBlockData({
    this.id,
    this.name,
    this.parentId,
    this.imageAvatar,
    this.images,
    this.urlVideo,
    this.typeVideo,
    this.description,
    this.urlId,
    this.url,
    this.attributes = const [],
    this.children = const [],
    this.productCount,
  });

  final int? id;
  final String? name;
  final dynamic parentId;
  final dynamic imageAvatar;
  final dynamic images;
  final dynamic urlVideo;
  final dynamic typeVideo;
  final dynamic description;
  final int? urlId;
  final String? url;
  final List<dynamic> attributes;
  final List<dynamic> children;
  final int? productCount;

  factory CategoryBlockData.fromJson(Map<String, dynamic> json) {
    return CategoryBlockData(
      id: json["id"],
      name: json["name"],
      parentId: json["parent_id"],
      imageAvatar: json["image_avatar"],
      images: json["images"],
      urlVideo: json["url_video"],
      typeVideo: json["type_video"],
      description: json["description"],
      urlId: json["url_id"],
      url: json["url"],
      attributes: json["attributes"] == null
          ? []
          : List<dynamic>.from(json["attributes"]!.map((x) => x)),
      children: json["children"] == null
          ? []
          : List<dynamic>.from(json["children"]!.map((x) => x)),
      productCount: json["product_count"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "parent_id": parentId,
        "image_avatar": imageAvatar,
        "images": images,
        "url_video": urlVideo,
        "type_video": typeVideo,
        "description": description,
        "url_id": urlId,
        "url": url,
        "attributes": attributes.map((x) => x).toList(),
        "children": children.map((x) => x).toList(),
        "product_count": productCount,
      };
}
