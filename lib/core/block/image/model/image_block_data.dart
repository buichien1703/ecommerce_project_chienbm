class ImageBlockData {
    ImageBlockData({
        required this.image,
        required this.source,
        this.action = "",
    });

    final String? image;
    final String? source;
    final String action;

    factory ImageBlockData.fromJson(Map<String, dynamic> json){ 
        return ImageBlockData(
            image: json["image"],
            source: json["source"],
            action: json["action"],
        );
    }

    Map<String, dynamic> toJson() => {
        "image": image,
        "source": source,
        "action": action,
    };

}