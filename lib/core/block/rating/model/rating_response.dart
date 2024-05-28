// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';

// class RatingResponse {
//   RatingResponse({
//     this.data = const [],
//     this.pagination,
//     this.ratingInfo,
//   });

//   final List<CommentData> data;
//   final Pagination? pagination;
//   final RatingInfo? ratingInfo;

//   RatingResponse copyWith({
//     List<CommentData>? data,
//     Pagination? pagination,
//     RatingInfo? ratingInfo,
//   }) {
//     return RatingResponse(
//       data: data ?? this.data,
//       pagination: pagination ?? this.pagination,
//       ratingInfo: ratingInfo ?? this.ratingInfo,
//     );
//   }

//   factory RatingResponse.fromJson(Map<String, dynamic> json) {
//     return RatingResponse(
//       data: json["data"] == null
//           ? []
//           : List<CommentData>.from(
//               json["data"]!.map((x) => CommentData.fromJson(x))),
//       pagination: json["pagination"] == null
//           ? null
//           : Pagination.fromJson(json["pagination"]),
//       ratingInfo: json["rating_info"] == null
//           ? null
//           : RatingInfo.fromJson(json["rating_info"]),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "data": data.map((x) => x.toJson()).toList(),
//         "pagination": pagination?.toJson(),
//         "rating_info": ratingInfo?.toJson(),
//       };

//   @override
//   String toString() {
//     return "$data, $pagination, $ratingInfo, ";
//   }
// }

// class RatingInfo {
//   RatingInfo({
//     required this.avgRating,
//     required this.numberRating,
//     required this.oneStar,
//     required this.twoStar,
//     required this.threeStar,
//     required this.fourStar,
//     required this.fiveStar,
//   });

//   final int? avgRating;
//   final int? numberRating;
//   final int? oneStar;
//   final int? twoStar;
//   final int? threeStar;
//   final int? fourStar;
//   final int? fiveStar;

//   RatingInfo copyWith({
//     int? avgRating,
//     int? numberRating,
//     int? oneStar,
//     int? twoStar,
//     int? threeStar,
//     int? fourStar,
//     int? fiveStar,
//   }) {
//     return RatingInfo(
//       avgRating: avgRating ?? this.avgRating,
//       numberRating: numberRating ?? this.numberRating,
//       oneStar: oneStar ?? this.oneStar,
//       twoStar: twoStar ?? this.twoStar,
//       threeStar: threeStar ?? this.threeStar,
//       fourStar: fourStar ?? this.fourStar,
//       fiveStar: fiveStar ?? this.fiveStar,
//     );
//   }

//   factory RatingInfo.fromJson(Map<String, dynamic> json) {
//     return RatingInfo(
//       avgRating: json["avg_rating"],
//       numberRating: json["number_rating"],
//       oneStar: json["one_star"],
//       twoStar: json["two_star"],
//       threeStar: json["three_star"],
//       fourStar: json["four_star"],
//       fiveStar: json["five_star"],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "avg_rating": avgRating,
//         "number_rating": numberRating,
//         "one_star": oneStar,
//         "two_star": twoStar,
//         "three_star": threeStar,
//         "four_star": fourStar,
//         "five_star": fiveStar,
//       };

//   @override
//   String toString() {
//     return "$avgRating, $numberRating, $oneStar, $twoStar, $threeStar, $fourStar, $fiveStar, ";
//   }
// }
