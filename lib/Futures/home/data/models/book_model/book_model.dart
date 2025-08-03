class BookModel {
  final String id;
  final String etag;
  final VolumeInfo volumeInfo;

  BookModel({
    required this.id,
    required this.etag,
    required this.volumeInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'] ?? '',
      etag: json['etag'] ?? '',
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'etag': etag,
        'volumeInfo': volumeInfo.toJson(),
      };
}

class VolumeInfo {
  final String title;
  final List<String> authors;
  final String publisher;
  final String publishedDate;
  final String description;
  final List<IndustryIdentifier> industryIdentifiers;
  final int pageCount;
  final String language;
  final ImageLinks imageLinks;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.pageCount,
    required this.language,
    required this.imageLinks,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'] ?? '',
      authors: List<String>.from(json['authors'] ?? []),
      publisher: json['publisher'] ?? '',
      publishedDate: json['publishedDate'] ?? '',
      description: json['description'] ?? '',
      industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
              ?.map((e) => IndustryIdentifier.fromJson(e))
              .toList() ??
          [],
      pageCount: json['pageCount'] ?? 0,
      language: json['language'] ?? '',
      imageLinks: ImageLinks.fromJson(json['imageLinks'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'industryIdentifiers':
            industryIdentifiers.map((e) => e.toJson()).toList(),
        'pageCount': pageCount,
        'language': language,
        'imageLinks': imageLinks.toJson(),
      };
}

class IndustryIdentifier {
  final String type;
  final String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] ?? '',
      identifier: json['identifier'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'type': type,
        'identifier': identifier,
      };
}

class ImageLinks {
  final String smallThumbnail;
  final String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'] ?? '',
      thumbnail: json['thumbnail'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'smallThumbnail': smallThumbnail,
        'thumbnail': thumbnail,
      };
}
