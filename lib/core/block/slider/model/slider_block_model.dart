import 'package:ecommerce_project_chienbm/core/src_core.dart';

class SliderBlockModel {
  SliderBlockModel({
    required this.data,
  });

  final List<ImageBlockData> data;

  factory SliderBlockModel.fromJson(Map<String, dynamic> json) {
    return SliderBlockModel(
      data: json["data"] == null
          ? []
          : List<ImageBlockData>.from(
              json["data"]!.map((x) => ImageBlockData.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "data": data.map((x) => x.toJson()).toList(),
      };
}
