import 'package:flutter/widgets.dart';

class SpecialEvent {
  final Decoration decoration;
  final DateTime date;
  final String eventName;
  final TextStyle textStyle;

//<editor-fold desc="Data Methods">
  const SpecialEvent({
    required this.decoration,
    required this.date,
    required this.eventName,
    required this.textStyle,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpecialEvent &&
          runtimeType == other.runtimeType &&
          decoration == other.decoration &&
          date == other.date &&
          eventName == other.eventName &&
          textStyle == other.textStyle);

  @override
  int get hashCode =>
      decoration.hashCode ^
      date.hashCode ^
      eventName.hashCode ^
      textStyle.hashCode;

  @override
  String toString() {
    return 'SpecialEvent{' +
        ' decoration: $decoration,' +
        ' date: $date,' +
        ' eventName: $eventName,' +
        ' textStyle: $textStyle,' +
        '}';
  }

  SpecialEvent copyWith({
    Decoration? decoration,
    DateTime? date,
    String? eventName,
    TextStyle? textStyle,
  }) {
    return SpecialEvent(
      decoration: decoration ?? this.decoration,
      date: date ?? this.date,
      eventName: eventName ?? this.eventName,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'decoration': this.decoration,
      'date': this.date,
      'eventName': this.eventName,
      'textStyle': this.textStyle,
    };
  }

  factory SpecialEvent.fromMap(Map<String, dynamic> map) {
    return SpecialEvent(
      decoration: map['decoration'] as Decoration,
      date: map['date'] as DateTime,
      eventName: map['eventName'] as String,
      textStyle: map['textStyle'] as TextStyle,
    );
  }

//</editor-fold>
}
