import 'package:ecommerce_project_chienbm/core/src_core.dart';

class ImageBlockModel {
    ImageBlockModel({
        required this.data,
    });

    final ImageBlockData? data;

    factory ImageBlockModel.fromJson(Map<String, dynamic> json){ 
        return ImageBlockModel(
            data: json["data"] == null ? null : ImageBlockData.fromJson(json["data"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
    };

}


