import 'package:simple_consume_api/generated/json/base/json_convert_content.dart';
import 'package:simple_consume_api/data/remote/model/news_response_entity.dart';

NewsResponseEntity $NewsResponseEntityFromJson(Map<String, dynamic> json) {
	final NewsResponseEntity newsResponseEntity = NewsResponseEntity();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		newsResponseEntity.status = status;
	}
	final int? totalResults = jsonConvert.convert<int>(json['totalResults']);
	if (totalResults != null) {
		newsResponseEntity.totalResults = totalResults;
	}
	final List<NewsResponseArticles>? articles = jsonConvert.convertListNotNull<NewsResponseArticles>(json['articles']);
	if (articles != null) {
		newsResponseEntity.articles = articles;
	}
	return newsResponseEntity;
}

Map<String, dynamic> $NewsResponseEntityToJson(NewsResponseEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['totalResults'] = entity.totalResults;
	data['articles'] =  entity.articles?.map((v) => v.toJson()).toList();
	return data;
}

NewsResponseArticles $NewsResponseArticlesFromJson(Map<String, dynamic> json) {
	final NewsResponseArticles newsResponseArticles = NewsResponseArticles();
	final NewsResponseArticlesSource? xSource = jsonConvert.convert<NewsResponseArticlesSource>(json['source']);
	if (xSource != null) {
		newsResponseArticles.xSource = xSource;
	}
	final String? author = jsonConvert.convert<String>(json['author']);
	if (author != null) {
		newsResponseArticles.author = author;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		newsResponseArticles.title = title;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		newsResponseArticles.description = description;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		newsResponseArticles.url = url;
	}
	final String? urlToImage = jsonConvert.convert<String>(json['urlToImage']);
	if (urlToImage != null) {
		newsResponseArticles.urlToImage = urlToImage;
	}
	final String? publishedAt = jsonConvert.convert<String>(json['publishedAt']);
	if (publishedAt != null) {
		newsResponseArticles.publishedAt = publishedAt;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		newsResponseArticles.content = content;
	}
	return newsResponseArticles;
}

Map<String, dynamic> $NewsResponseArticlesToJson(NewsResponseArticles entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['source'] = entity.xSource?.toJson();
	data['author'] = entity.author;
	data['title'] = entity.title;
	data['description'] = entity.description;
	data['url'] = entity.url;
	data['urlToImage'] = entity.urlToImage;
	data['publishedAt'] = entity.publishedAt;
	data['content'] = entity.content;
	return data;
}

NewsResponseArticlesSource $NewsResponseArticlesSourceFromJson(Map<String, dynamic> json) {
	final NewsResponseArticlesSource newsResponseArticlesSource = NewsResponseArticlesSource();
	final dynamic? id = jsonConvert.convert<dynamic>(json['id']);
	if (id != null) {
		newsResponseArticlesSource.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		newsResponseArticlesSource.name = name;
	}
	return newsResponseArticlesSource;
}

Map<String, dynamic> $NewsResponseArticlesSourceToJson(NewsResponseArticlesSource entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}