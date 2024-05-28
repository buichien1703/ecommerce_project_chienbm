class Pagination {
  Pagination({
    this.field,
    this.sort,
    this.page,
    this.pages,
    this.perpage,
    this.current,
    this.total,
  });

  final String? field;
  final String? sort;
  final int? page;
  final int? pages;
  final int? perpage;
  final int? current;
  final int? total;

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      field: json["field"],
      sort: json["sort"],
      page: json["page"],
      pages: json["pages"],
      perpage: json["perpage"],
      current: json["current"],
      total: json["total"],
    );
  }

  Map<String, dynamic> toJson() => {
        "sort_field": field,
        "sort_type": sort,
        "page": page,
        "pages": pages,
        "perpage": perpage,
        "current": current,
        "total": total,
      };

  // ProductFilter toProductFilter() {
  //   return ProductFilter(
  //     sortField: field,
  //     sortType: sort,
  //     page: page,
  //   );
  // }

  @override
  String toString() {
    return 'Pagination(field: $field, sort: $sort, page: $page, pages: $pages, perpage: $perpage, current: $current, total: $total)';
  }

  Pagination copyWith({
    String? field,
    String? sort,
    int? pages,
    int? perpage,
    int? current,
    int? total,
    int? page,
  }) {
    return Pagination(
      field: field ?? this.field,
      sort: sort ?? this.sort,
      pages: pages ?? this.pages,
      perpage: perpage ?? this.perpage,
      current: current ?? this.current,
      total: total ?? this.total,
      page: page ?? this.page,
    );
  }

  // Pagination convertFromProductFilter(ProductFilter filter) {
  //   return copyWith(
  //     field: filter.sortField,
  //     perpage: filter.page,
  //     sort: filter.sortType,

  //     // current:
  //   );
  // }
}
