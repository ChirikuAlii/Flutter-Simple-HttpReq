import 'dart:convert';
import 'package:simple_consume_api/generated/json/base/json_field.dart';
import 'package:simple_consume_api/generated/json/news_response_entity.g.dart';

@JsonSerializable()
class NewsResponseEntity {

	String? status;
	int? totalResults;
	List<NewsResponseArticles>? articles;
  
  NewsResponseEntity();

  factory NewsResponseEntity.fromJson(Map<String, dynamic> json) => $NewsResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => $NewsResponseEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewsResponseArticles {

	@JSONField(name: "source")
	NewsResponseArticlesSource? xSource;
	String? author;
	String? title;
	String? description;
	String? url;
	String? urlToImage;
	String? publishedAt;
	String? content;
  
  NewsResponseArticles();

  factory NewsResponseArticles.fromJson(Map<String, dynamic> json) => $NewsResponseArticlesFromJson(json);

  Map<String, dynamic> toJson() => $NewsResponseArticlesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewsResponseArticlesSource {

	dynamic? id;
	String? name;
  
  NewsResponseArticlesSource();

  factory NewsResponseArticlesSource.fromJson(Map<String, dynamic> json) => $NewsResponseArticlesSourceFromJson(json);

  Map<String, dynamic> toJson() => $NewsResponseArticlesSourceToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}