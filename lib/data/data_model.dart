class Article {
  Article({
    required this.data,
    required this.included,
    required this.links,
    required this.meta,
  });
  late final List<Data> data;
  late final List<Included> included;
  late final Links links;
  late final Meta meta;

  Article.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
    included =
        List.from(json['included']).map((e) => Included.fromJson(e)).toList();
    links = Links.fromJson(json['links']);
    meta = Meta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    _data['included'] = included.map((e) => e.toJson()).toList();
    _data['links'] = links.toJson();
    _data['meta'] = meta.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
    required this.links,
  });
  late final String id;
  late final String type;
  late final Attributes attributes;
  late final Relationships relationships;
  late final Links links;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    attributes = Attributes.fromJson(json['attributes']);
    relationships = Relationships.fromJson(json['relationships']);
    links = Links.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['type'] = type;
    _data['attributes'] = attributes.toJson();
    _data['relationships'] = relationships.toJson();
    _data['links'] = links.toJson();
    return _data;
  }
}

class Attributes {
  Attributes({
    required this.uri,
    required this.name,
    required this.description,
    required this.releasedAt,
    required this.free,
    this.difficulty,
    required this.contentType,
    required this.duration,
    required this.popularity,
    required this.technologyTripleString,
    required this.contributorString,
    this.ordinal,
    required this.professional,
    required this.descriptionPlainText,
    this.videoIdentifier,
    this.parentName,
    required this.accessible,
    required this.cardArtworkUrl,
  });
  late final String uri;
  late final String name;
  late final String description;
  late final String releasedAt;
  late final bool free;
  late final String? difficulty;
  late final String contentType;
  late final int duration;
  late final int? popularity;
  late final String technologyTripleString;
  late final String contributorString;
  late final Null ordinal;
  late final bool professional;
  late final String descriptionPlainText;
  late final Null videoIdentifier;
  late final Null parentName;
  late final bool accessible;
  late final String cardArtworkUrl;

  Attributes.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    name = json['name'];
    description = json['description'];
    releasedAt = json['released_at'];
    free = json['free'];
    difficulty = null;
    contentType = json['content_type'];
    duration = json['duration'];
    popularity = json['popularity'];
    technologyTripleString = json['technology_triple_string'];
    contributorString = json['contributor_string'];
    ordinal = null;
    professional = json['professional'];
    descriptionPlainText = json['description_plain_text'];
    videoIdentifier = null;
    parentName = null;
    accessible = json['accessible'];
    cardArtworkUrl = json['card_artwork_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uri'] = uri;
    _data['name'] = name;
    _data['description'] = description;
    _data['released_at'] = releasedAt;
    _data['free'] = free;
    _data['difficulty'] = difficulty;
    _data['content_type'] = contentType;
    _data['duration'] = duration;
    _data['popularity'] = popularity;
    _data['technology_triple_string'] = technologyTripleString;
    _data['contributor_string'] = contributorString;
    _data['ordinal'] = ordinal;
    _data['professional'] = professional;
    _data['description_plain_text'] = descriptionPlainText;
    _data['video_identifier'] = videoIdentifier;
    _data['parent_name'] = parentName;
    _data['accessible'] = accessible;
    _data['card_artwork_url'] = cardArtworkUrl;
    return _data;
  }
}

class Relationships {
  Relationships({
    required this.domains,
    required this.childContents,
    required this.progression,
    required this.bookmark,
  });
  late final Domains domains;
  late final ChildContents childContents;
  late final Progression progression;
  late final Bookmark bookmark;

  Relationships.fromJson(Map<String, dynamic> json) {
    domains = Domains.fromJson(json['domains']);
    childContents = ChildContents.fromJson(json['child_contents']);
    progression = Progression.fromJson(json['progression']);
    bookmark = Bookmark.fromJson(json['bookmark']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['domains'] = domains.toJson();
    _data['child_contents'] = childContents.toJson();
    _data['progression'] = progression.toJson();
    _data['bookmark'] = bookmark.toJson();
    return _data;
  }
}

class Domains {
  Domains({
    required this.data,
  });
  late final List<Data> data;

  Domains.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ChildContents {
  ChildContents({
    required this.meta,
  });
  late final Meta meta;

  ChildContents.fromJson(Map<String, dynamic> json) {
    meta = Meta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['meta'] = meta.toJson();
    return _data;
  }
}

class Meta {
  Meta({
    required this.count,
  });
  late final int count;

  Meta.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    return _data;
  }
}

class Progression {
  Progression({
    this.data,
  });
  late final Null data;

  Progression.fromJson(Map<String, dynamic> json) {
    data = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data;
    return _data;
  }
}

class Bookmark {
  Bookmark({
    this.data,
  });
  late final Null data;

  Bookmark.fromJson(Map<String, dynamic> json) {
    data = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data;
    return _data;
  }
}

class Links {
  Links({
    required this.self,
  });
  late final String self;

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['self'] = self;
    return _data;
  }
}

class Included {
  Included({
    required this.id,
    required this.type,
    required this.attributes,
  });
  late final String id;
  late final String type;
  late final Attributes attributes;

  Included.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    attributes = Attributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['type'] = type;
    _data['attributes'] = attributes.toJson();
    return _data;
  }
}
