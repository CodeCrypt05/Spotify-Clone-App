import 'datum.dart';

class CurrentMealData {
  final Data data;

  CurrentMealData({required this.data});

  factory CurrentMealData.fromJson(Map<String, dynamic> json) =>
      CurrentMealData(data: Data.fromJson(json["data"]));
}

class Meal {
  Data? data;

  Meal({this.data});

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
      };
}

class Data {
  List<Datum>? data;
  int? totalPages;
  int? currentPage;
  String? nextPage;

  Data({
    this.data,
    this.totalPages,
    this.currentPage,
    this.nextPage,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        totalPages: json['totalPages'] as int?,
        currentPage: json['currentPage'] as int?,
        nextPage: json['nextPage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'totalPages': totalPages,
        'currentPage': currentPage,
        'nextPage': nextPage,
      };
}
