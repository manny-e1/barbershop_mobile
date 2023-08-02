import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_service.freezed.dart';

@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();
  const factory RemoteResponse.noConnection() = _NoConnection<T>;
  const factory RemoteResponse.withData(
    T data) = _WithNewData<T>;

}