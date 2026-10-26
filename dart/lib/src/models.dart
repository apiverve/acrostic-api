/// Response models for the Acrostic Puzzle Generator API.

/// API Response wrapper.
class AcrosticResponse {
  final String status;
  final dynamic error;
  final AcrosticData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AcrosticResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AcrosticResponse.fromJson(Map<String, dynamic> json) => AcrosticResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AcrosticData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Acrostic Puzzle Generator API.

class AcrosticData {
  String? keyword;
  String? theme;
  List<AcrosticDataLinesItem>? lines;
  num? lineCount;
  String? html;
  AcrosticDataImage? image;

  AcrosticData({
    this.keyword,
    this.theme,
    this.lines,
    this.lineCount,
    this.html,
    this.image,
  });

  factory AcrosticData.fromJson(Map<String, dynamic> json) => AcrosticData(
      keyword: json['keyword'],
      theme: json['theme'],
      lines: (json['lines'] as List?)?.map((e) => AcrosticDataLinesItem.fromJson(e)).toList(),
      lineCount: json['lineCount'],
      html: json['html'],
      image: json['image'] != null ? AcrosticDataImage.fromJson(json['image']) : null,
    );
}

class AcrosticDataLinesItem {
  num? position;
  String? letter;
  String? answer;
  num? letterCount;
  String? clue;

  AcrosticDataLinesItem({
    this.position,
    this.letter,
    this.answer,
    this.letterCount,
    this.clue,
  });

  factory AcrosticDataLinesItem.fromJson(Map<String, dynamic> json) => AcrosticDataLinesItem(
      position: json['position'],
      letter: json['letter'],
      answer: json['answer'],
      letterCount: json['letterCount'],
      clue: json['clue'],
    );
}

class AcrosticDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  AcrosticDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory AcrosticDataImage.fromJson(Map<String, dynamic> json) => AcrosticDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class AcrosticRequest {
  String word;
  String? theme;
  bool? image;

  AcrosticRequest({
    required this.word,
    this.theme,
    this.image,
  });

  Map<String, dynamic> toJson() => {
      'word': word,
      if (theme != null) 'theme': theme,
      if (image != null) 'image': image,
    };
}
