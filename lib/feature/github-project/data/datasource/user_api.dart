import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../model/github_user_profile_markdown/github_user_profile_markdown.dart';
import '/feature/github-project/data/model/github_user_profile.dart';

Future<GithubUserProfile?> functionHai() async {
  var dio = Dio();
  var headers = {
    'Content-Type': 'application/vnd.github.VERSION.raw',
    'Authorization': 'Bearer ${dotenv.env['GITHUB_PERSONAL_ACCESS_TOKEN']}',
  };
  var data = json.encode({"name": "DeepeshKalura"});
  var response = await dio.request(
    'https://api.github.com/user',
    options: Options(
      method: 'GET',
      headers: headers,
    ),
    data: data,
  );

  if (response.statusCode == 200) {
    return GithubUserProfile.fromMap(response.data as Map<String, dynamic>);
  } else {
    print(response.statusMessage);
  }
  return null;
}

Future<GithubUserProfileMarkdown?> profileRenderKernaHai() async {
  var dio = Dio();
  var headers = {
    'Accept': 'application/vnd.github.v3+json',
    'Authorization': 'Bearer ${dotenv.env['GITHUB_PERSONAL_ACCESS_TOKEN']}'
  };

  var response = await dio.request(
    'https://api.github.com/repos/DeepeshKalura/DeepeshKalura/readme',
    options: Options(
      method: 'GET',
      headers: headers,
    ),
  );
  if (response.statusCode == 200) {
    return GithubUserProfileMarkdown.fromMap(response.data);
  } else {
    print(response.statusMessage);
  }
  return null;
}
