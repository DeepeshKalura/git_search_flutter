import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'links.dart';

class GithubUserProfileMarkdown extends Equatable {
  final String? name;
  final String? path;
  final String? sha;
  final int? size;
  final String? url;
  final String? htmlUrl;
  final String? gitUrl;
  final String? downloadUrl;
  final String? type;
  final String? content;
  final String? encoding;
  final Links? links;

  const GithubUserProfileMarkdown({
    this.name,
    this.path,
    this.sha,
    this.size,
    this.url,
    this.htmlUrl,
    this.gitUrl,
    this.downloadUrl,
    this.type,
    this.content,
    this.encoding,
    this.links,
  });

  factory GithubUserProfileMarkdown.fromMap(Map<String, dynamic> data) {
    return GithubUserProfileMarkdown(
      name: data['name'] as String?,
      path: data['path'] as String?,
      sha: data['sha'] as String?,
      size: data['size'] as int?,
      url: data['url'] as String?,
      htmlUrl: data['html_url'] as String?,
      gitUrl: data['git_url'] as String?,
      downloadUrl: data['download_url'] as String?,
      type: data['type'] as String?,
      content: data['content'] as String?,
      encoding: data['encoding'] as String?,
      links: data['_links'] == null
          ? null
          : Links.fromMap(data['_links'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'path': path,
        'sha': sha,
        'size': size,
        'url': url,
        'html_url': htmlUrl,
        'git_url': gitUrl,
        'download_url': downloadUrl,
        'type': type,
        'content': content,
        'encoding': encoding,
        '_links': links?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GithubUserProfileMarkdown].
  factory GithubUserProfileMarkdown.fromJson(String data) {
    return GithubUserProfileMarkdown.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GithubUserProfileMarkdown] to a JSON string.
  String toJson() => json.encode(toMap());

  GithubUserProfileMarkdown copyWith({
    String? name,
    String? path,
    String? sha,
    int? size,
    String? url,
    String? htmlUrl,
    String? gitUrl,
    String? downloadUrl,
    String? type,
    String? content,
    String? encoding,
    Links? links,
  }) {
    return GithubUserProfileMarkdown(
      name: name ?? this.name,
      path: path ?? this.path,
      sha: sha ?? this.sha,
      size: size ?? this.size,
      url: url ?? this.url,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      gitUrl: gitUrl ?? this.gitUrl,
      downloadUrl: downloadUrl ?? this.downloadUrl,
      type: type ?? this.type,
      content: content ?? this.content,
      encoding: encoding ?? this.encoding,
      links: links ?? this.links,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      path,
      sha,
      size,
      url,
      htmlUrl,
      gitUrl,
      downloadUrl,
      type,
      content,
      encoding,
      links,
    ];
  }
}
