// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BoletoModel {
  final String? name;
  final String? dueDate;
  final double? value;
  final String? barcode;
  BoletoModel({
    this.name,
    this.dueDate,
    this.value,
    this.barcode,
  });

  BoletoModel copyWith({
    String? name,
    String? dueDate,
    double? value,
    String? barcode,
  }) {
    return BoletoModel(
      name: name ?? this.name,
      dueDate: dueDate ?? this.dueDate,
      value: value ?? this.value,
      barcode: barcode ?? this.barcode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'dueDate': dueDate,
      'value': value,
      'barcode': barcode,
    };
  }

  factory BoletoModel.fromMap(Map<String, dynamic> map) {
    return BoletoModel(
      name: map['name'] != null ? map['name'] as String : null,
      dueDate: map['dueDate'] != null ? map['dueDate'] as String : null,
      value: map['value'] != null ? map['value'] as double : null,
      barcode: map['barcode'] != null ? map['barcode'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BoletoModel.fromJson(String source) => BoletoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BoletoModel(name: $name, dueDate: $dueDate, value: $value, barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BoletoModel &&
      other.name == name &&
      other.dueDate == dueDate &&
      other.value == value &&
      other.barcode == barcode;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      dueDate.hashCode ^
      value.hashCode ^
      barcode.hashCode;
  }
}
