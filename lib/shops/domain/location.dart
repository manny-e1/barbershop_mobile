
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const Location._();
  const factory Location({required double lat, required double lng}) =
      _Location;
}
