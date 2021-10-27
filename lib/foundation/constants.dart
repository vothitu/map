import "package:flutter/material.dart";

@immutable
class Constants {
  const Constants._({required this.endPoint});

  factory Constants.of() {
    return Constants.prd();
  }

  factory Constants.prd() {
    return Constants._(
      endPoint: "http://167.172.78.244:8000",
    );
  }

  // Singleton
  static late final Constants instance = Constants.of();

  final String endPoint;
}
