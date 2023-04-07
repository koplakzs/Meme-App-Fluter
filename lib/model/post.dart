// Example

class Posts {
  String id, name, url;

  Posts({required this.id, required this.name, required this.url});

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(id: json['id'], name: json['name'], url: json['url']);
  }
}
