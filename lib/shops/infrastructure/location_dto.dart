import 'package:barbershop_frontend/shops/domain/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
class LocationDTO with _$LocationDTO {
  const LocationDTO._();
  const factory LocationDTO({required double lat, required double lng}) =
      _LocationDTO;

  factory LocationDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationDTOFromJson(json);

  factory LocationDTO.fromDomain(Location _) {
    return LocationDTO(lat: _.lat, lng: _.lng);
  }

  Location toDomain() {
    return Location(lat: lat, lng: lng);
  }
}
