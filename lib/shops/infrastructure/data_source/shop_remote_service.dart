import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:barbershop_frontend/shops/infrastructure/shop_dto.dart';
import 'package:dio/dio.dart';

class ShopRemoteService {
  final Dio _dio;

  ShopRemoteService(this._dio);

  Future<RemoteResponse<ShopDTO>> getShop(id) async {
    try {
      final response = await _dio.get('/shops/$id');
      if (response.statusCode == 200) {
        return RemoteResponse.withData(ShopDTO.fromJson(response.data));
      } else {
        throw ApiException(response.data["message"]);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      }
      throw ApiException(e.response?.data["message"]);
    }
  }

  Future<RemoteResponse<List<ShopDTO>>> getShops() async {
    try {
      final response = await _dio.get('/shops');
      if (response.statusCode == 200) {
        final listOfShops = response.data as List;
        List<ShopDTO> shops = listOfShops
            .map((shop) => ShopDTO.fromJson(shop as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withData(shops);
      } else {
        throw ApiException(response.data["message"]);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      }
      throw ApiException(e.response?.data["message"]);
    }
  }

}
