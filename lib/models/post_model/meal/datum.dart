import 'product_category.dart';

class Datum {
  int? id;
  String? name;
  ProductCategory? productCategory;
  dynamic unitDetail;
  dynamic gst;
  List<dynamic>? variants;

  Datum({
    this.id,
    this.name,
    this.productCategory,
    this.unitDetail,
    this.gst,
    this.variants,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        name: json['name'] as String?,
        productCategory: json['productCategory'] == null
            ? null
            : ProductCategory.fromJson(
                json['productCategory'] as Map<String, dynamic>),
        unitDetail: json['unitDetail'] as dynamic,
        gst: json['gst'] as dynamic,
        variants: json['variants'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'productCategory': productCategory?.toJson(),
        'unitDetail': unitDetail,
        'gst': gst,
        'variants': variants,
      };
}
