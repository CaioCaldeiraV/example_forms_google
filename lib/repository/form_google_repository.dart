import 'package:dio/dio.dart';

class FormGoogleRepository {
  Future<void> sendAnswersToGoogleForm(String singer, String player) async {
    final Dio _dio = Dio();
    await _dio.post(
      "https://docs.google.com/forms/u/0/d/e/1FAIpQLSdvrIj7CGcgCklwuNVYmOeMtD16QENrqcmXD9njJY6SmkpyoA/formResponse",
      options: Options(
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ),
      data: {'entry.1321413036': player, 'entry.755532722': singer},
    );
  }
}
