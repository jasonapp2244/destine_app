class Quiz {
  final String title;
  final String subtitle;
  final String status;
  final String questions;
  final String score;
  final String actionButton;

  Quiz({
    required this.title,
    required this.subtitle,
    required this.status,
    required this.questions,
    required this.score,
    required this.actionButton,
  });

  factory Quiz.fromMap(Map<String, dynamic> map) {
    return Quiz(
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      status: map['status'] ?? '',
      questions: map['questions'] ?? '',
      score: map['score'] ?? '',
      actionButton: map['actionButton'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'status': status,
      'questions': questions,
      'score': score,
      'actionButton': actionButton,
    };
  }
} 