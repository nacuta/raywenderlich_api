// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:raywenderlich_api/data/data_model.dart';

class RWClient {
  final _host = 'https://api.raywenderlich.com/api/contents';

  // Future<http.Response> fetchArticles() async {
  //   http.Response result = await http.get(Uri.parse(_host));
  //   return result;
  // }
}

Future<Article> fetchArticles(String? query) async {
  final _host = 'api.raywenderlich.com';
  final _contextRoot = 'api';
  final path = 'contents';

  Map<String, Object> params = {
    'filter[content_types][]': 'article',
    'page[size]': '25',
  };

  if (query != null && query.isNotEmpty) {
    params['filter[q]'] = query;
  }

  final uri = Uri.https(_host, '$_contextRoot/$path', params);
  final headers = _headers;
  // final results = await http.get(uri, headers: headers);
  // final jsonObject = json.decode(results.body);

  // Response response = Response();
  var dio = Dio();
  // var response1 = await dio.get('/test?id=12&name=wendu');
  // print(response.data.toString());
// Optionally the request above could also be done as
  var _path = '$_host/$_contextRoot/$path';
  var response =
      // await dio.get('/test', queryParameters: {'id': 12, 'name': 'wendu'});
      await dio.get(_path, queryParameters: params);
  // await dio.get('_host$_contextRoot/$path', params);
  if (response.statusCode == 200) {
    var getUsersData = response.data as List;
  }
  // final response = await http.get(
  //   Uri.parse('https://api.raywenderlich.com/api/contents'),
  //   // Send authorization headers to the backend.
  //   headers: {
  //     HttpHeaders.authorizationHeader: 'Basic $authToken',
  //   },
  // );

  var yy = Article.fromJson(response.data);
  return yy;
}

Map<String, String> get _headers => {
      'content-type': 'application/vnd.api+json; charset=utf-8',
      'Accept': 'application/json',
    };

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

const userId = 'd6c38e9a-2ab0-11ec-ad10-4f3121bfbb78';
const authToken =
    'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJkNmMzOGU5YS0yYWIwLTExZWMtYWQxMC00ZjMxMjFiZmJiNzgiLCJpYXQiOjE2NTU3MTUyMzd9.37KR5RcDBQKWzIzcBkJwkYdCGdcL4YvQqTzZ8JaYLZw';

// https://api.raywenderlich.com/api/contents?filter[content_types][]=article&page[size]=25&filter[q]=flutter

class User {
  final String name;

  User(
    this.name,
  );

  User copyWith({
    String? name,
  }) {
    return User(
      name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
