import 'package:barbershop_frontend/shops/domain/location.dart';
import 'package:barbershop_frontend/user/user_services/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop.freezed.dart';

@freezed
class Shop with _$Shop {
  const Shop._();
  const factory Shop({
    required String id,
    required String name,
    required User shopAdmin,
    required List<User> barbers,
    required Location location,
    List<String?>? pics,
    List<Map<String, dynamic>?>? services,
  }) = _Shop;

 
}
