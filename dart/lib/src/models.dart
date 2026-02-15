/// Response models for the Acrostic Puzzle Generator API.

/// API Response wrapper.
class AcrosticResponse {
  final String status;
  final dynamic error;
  final AcrosticData? data;

  AcrosticResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AcrosticResponse.fromJson(Map<String, dynamic> json) => AcrosticResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AcrosticData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Acrostic Puzzle Generator API.

class AcrosticData {
  String? keyword;
  String? theme;
  List<AcrosticDataLinesItem>? lines;
  int? lineCount;
  String? html;

  AcrosticData({
    this.keyword,
    this.theme,
    this.lines,
    this.lineCount,
    this.html,
  });

  factory AcrosticData.fromJson(Map<String, dynamic> json) => AcrosticData(
      keyword: json['keyword'],
      theme: json['theme'],
      lines: (json['lines'] as List?)?.map((e) => AcrosticDataLinesItem.fromJson(e)).toList(),
      lineCount: json['lineCount'],
      html: json['html'],
    );
}

class AcrosticDataLinesItem {
  int? position;
  String? letter;
  String? answer;
  int? letterCount;
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

class AcrosticRequest {
  String word;
  String? theme;

  AcrosticRequest({
    required this.word,
    this.theme,
  });

  Map<String, dynamic> toJson() => {
      'word': word,
      if (theme != null) 'theme': theme,
    };
}
