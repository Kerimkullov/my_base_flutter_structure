import 'package:injectable/injectable.dart';
import 'package:my_beeline/core/repositories/sample_repository/model/response/sample_model.dart';
import 'package:my_beeline/core/services/http_service/api_client.dart';

@injectable
class SampleRepository {
  SampleRepository(
    this._apiClient,
  );

  final ApiClient _apiClient;

  Future<SampleModel> sampleApi({
    required Map<String, dynamic> body,
  }) async {
    final response = await _apiClient.post(
      'public/platform-service/v1/device-info',
      body: body,
    );

    return SampleModel.fromJson(response);
  }
}
