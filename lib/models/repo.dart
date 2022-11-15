// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.id = 0,
        this.name,
        this.fullName,
        this.owner,
        this.parent,
        this.private = false,
        this.description,
        this.fork = false,
        this.language,
        this.forksCount = 0,
        this.stargazersCount = 0,
        this.size = 0,
        this.defaultBranch,
        this.openIssuesCount = 0,
        this.pushedAt,
        this.createdAt,
        this.updatedAt,
        this.subscribersCount = 0,
        this.license,
    });

    int id;
    String? name;
    String? fullName;
    String? owner;
    String? parent;
    bool private;
    String? description;
    bool fork;
    String? language;
    int forksCount;
    int stargazersCount;
    int size;
    String? defaultBranch;
    int openIssuesCount;
    DateTime? pushedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    int subscribersCount;
    License? license;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        fullName: json["full_name"],
        owner: json["owner"],
        parent: json["parent?"],
        private: json["private"],
        description: json["description"],
        fork: json["fork"],
        language: json["language?"],
        forksCount: json["forks_count"],
        stargazersCount: json["stargazers_count"],
        size: json["size"],
        defaultBranch: json["default_branch"],
        openIssuesCount: json["open_issues_count"],
        pushedAt: DateTime.parse(json["pushed_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        subscribersCount: json["subscribers_count?"],
        license: License.fromJson(json["license?"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "full_name": fullName,
        "owner": owner,
        "parent?": parent,
        "private": private,
        "description": description,
        "fork": fork,
        "language?": language,
        "forks_count": forksCount,
        "stargazers_count": stargazersCount,
        "size": size,
        "default_branch": defaultBranch,
        "open_issues_count": openIssuesCount,
        "pushed_at": pushedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "subscribers_count?": subscribersCount,
        "license?": license?.toJson(),
    };
}

class License {
    License({
        this.key,
        this.name,
        this.spdxId,
        this.url,
        this.nodeId,
    });

    String? key;
    String? name;
    String? spdxId;
    String? url;
    String? nodeId;

    factory License.fromJson(Map<String, dynamic> json) => License(
        key: json["key"],
        name: json["name"],
        spdxId: json["spdx_id"],
        url: json["url"],
        nodeId: json["node_id"],
    );

    Map<String, dynamic> toJson() => {
        "key": key,
        "name": name,
        "spdx_id": spdxId,
        "url": url,
        "node_id": nodeId,
    };
}
