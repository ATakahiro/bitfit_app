import 'package:freezed_annotation/freezed_annotation.dart';
part 'level1.freezed.dart';
part 'level1.g.dart';

@freezed
class Level1 with _$Level1 {
  const factory Level1({
    // 名前
    required String name,
    // 色
    required String color,
    // 旬の季節
    required String season,
  }) = _Level1;
  factory Level1.fromJson(Map<String, dynamic> json) => _$Level1FromJson(json);
}