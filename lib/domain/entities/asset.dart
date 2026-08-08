import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset.freezed.dart';

enum AssetType { stock, metal, currency, cash, commercialEstate }

@freezed
abstract class Asset with _$Asset {
  const factory Asset({
    required String id,
    required String name,
    required AssetType type,
    required double value,
    required double changePercent,
  }) = _Asset;

  
}
