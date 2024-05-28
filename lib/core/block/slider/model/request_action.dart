class RequestAction {
  RequestAction({
    required this.pageType,
    this.params,
  });

  final String? pageType;
  final String? params;

  RequestAction copyWith({
    String? pageType,
    String? params,
  }) {
    return RequestAction(
      pageType: pageType ?? this.pageType,
      params: params ?? this.params,
    );
  }

  factory RequestAction.fromJson(Map<String, dynamic> json) {
    return RequestAction(
      pageType: json["page_type"],
      params: json["params"],
    );
  }

  Map<String, dynamic> toJson() => {
        "page_type": pageType,
        "params": params,
      };
}
