import 'dart:convert';

import 'package:equatable/equatable.dart';

class GithubUserProfile extends Equatable {
  final String? login;
  final int? id;
  final String? nodeId;
  final String? avatarUrl;
  final String? gravatarId;
  final String? url;
  final String? htmlUrl;
  final String? followersUrl;
  final String? followingUrl;
  final String? gistsUrl;
  final String? starredUrl;
  final String? subscriptionsUrl;
  final String? organizationsUrl;
  final String? reposUrl;
  final String? eventsUrl;
  final String? receivedEventsUrl;
  final String? type;
  final bool? siteAdmin;
  final String? name;
  final dynamic company;
  final String? blog;
  final dynamic location;
  final dynamic email;
  final dynamic hireable;
  final String? bio;
  final String? twitterUsername;
  final int? publicRepos;
  final int? publicGists;
  final int? followers;
  final int? following;
  final String? createdAt;
  final String? updatedAt;

  const GithubUserProfile({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.hireable,
    this.bio,
    this.twitterUsername,
    this.publicRepos,
    this.publicGists,
    this.followers,
    this.following,
    this.createdAt,
    this.updatedAt,
  });

  factory GithubUserProfile.fromMap(Map<String, dynamic> data) {
    return GithubUserProfile(
      login: data['login'] as String?,
      id: data['id'] as int?,
      nodeId: data['node_id'] as String?,
      avatarUrl: data['avatar_url'] as String?,
      gravatarId: data['gravatar_id'] as String?,
      url: data['url'] as String?,
      htmlUrl: data['html_url'] as String?,
      followersUrl: data['followers_url'] as String?,
      followingUrl: data['following_url'] as String?,
      gistsUrl: data['gists_url'] as String?,
      starredUrl: data['starred_url'] as String?,
      subscriptionsUrl: data['subscriptions_url'] as String?,
      organizationsUrl: data['organizations_url'] as String?,
      reposUrl: data['repos_url'] as String?,
      eventsUrl: data['events_url'] as String?,
      receivedEventsUrl: data['received_events_url'] as String?,
      type: data['type'] as String?,
      siteAdmin: data['site_admin'] as bool?,
      name: data['name'] as String?,
      company: data['company'] as dynamic,
      blog: data['blog'] as String?,
      location: data['location'] as dynamic,
      email: data['email'] as dynamic,
      hireable: data['hireable'] as dynamic,
      bio: data['bio'] as String?,
      twitterUsername: data['twitter_username'] as String?,
      publicRepos: data['public_repos'] as int?,
      publicGists: data['public_gists'] as int?,
      followers: data['followers'] as int?,
      following: data['following'] as int?,
      createdAt: data['created_at'] as String?,
      updatedAt: data['updated_at'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'login': login,
        'id': id,
        'node_id': nodeId,
        'avatar_url': avatarUrl,
        'gravatar_id': gravatarId,
        'url': url,
        'html_url': htmlUrl,
        'followers_url': followersUrl,
        'following_url': followingUrl,
        'gists_url': gistsUrl,
        'starred_url': starredUrl,
        'subscriptions_url': subscriptionsUrl,
        'organizations_url': organizationsUrl,
        'repos_url': reposUrl,
        'events_url': eventsUrl,
        'received_events_url': receivedEventsUrl,
        'type': type,
        'site_admin': siteAdmin,
        'name': name,
        'company': company,
        'blog': blog,
        'location': location,
        'email': email,
        'hireable': hireable,
        'bio': bio,
        'twitter_username': twitterUsername,
        'public_repos': publicRepos,
        'public_gists': publicGists,
        'followers': followers,
        'following': following,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GithubUserProfile].
  factory GithubUserProfile.fromJson(String data) {
    return GithubUserProfile.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GithubUserProfile] to a JSON string.
  String toJson() => json.encode(toMap());

  GithubUserProfile copyWith({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    String? type,
    bool? siteAdmin,
    String? name,
    dynamic company,
    String? blog,
    dynamic location,
    dynamic email,
    dynamic hireable,
    String? bio,
    String? twitterUsername,
    int? publicRepos,
    int? publicGists,
    int? followers,
    int? following,
    String? createdAt,
    String? updatedAt,
  }) {
    return GithubUserProfile(
      login: login ?? this.login,
      id: id ?? this.id,
      nodeId: nodeId ?? this.nodeId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      gravatarId: gravatarId ?? this.gravatarId,
      url: url ?? this.url,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      followersUrl: followersUrl ?? this.followersUrl,
      followingUrl: followingUrl ?? this.followingUrl,
      gistsUrl: gistsUrl ?? this.gistsUrl,
      starredUrl: starredUrl ?? this.starredUrl,
      subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
      organizationsUrl: organizationsUrl ?? this.organizationsUrl,
      reposUrl: reposUrl ?? this.reposUrl,
      eventsUrl: eventsUrl ?? this.eventsUrl,
      receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
      type: type ?? this.type,
      siteAdmin: siteAdmin ?? this.siteAdmin,
      name: name ?? this.name,
      company: company ?? this.company,
      blog: blog ?? this.blog,
      location: location ?? this.location,
      email: email ?? this.email,
      hireable: hireable ?? this.hireable,
      bio: bio ?? this.bio,
      twitterUsername: twitterUsername ?? this.twitterUsername,
      publicRepos: publicRepos ?? this.publicRepos,
      publicGists: publicGists ?? this.publicGists,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props {
    return [
      login,
      id,
      nodeId,
      avatarUrl,
      gravatarId,
      url,
      htmlUrl,
      followersUrl,
      followingUrl,
      gistsUrl,
      starredUrl,
      subscriptionsUrl,
      organizationsUrl,
      reposUrl,
      eventsUrl,
      receivedEventsUrl,
      type,
      siteAdmin,
      name,
      company,
      blog,
      location,
      email,
      hireable,
      bio,
      twitterUsername,
      publicRepos,
      publicGists,
      followers,
      following,
      createdAt,
      updatedAt,
    ];
  }
}
