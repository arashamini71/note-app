import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_project_temp/domain/core/failures.dart';
import 'package:firebase_ddd_project_temp/domain/core/value_object.dart';
import 'package:firebase_ddd_project_temp/domain/core/value_transformer.dart';
import 'package:firebase_ddd_project_temp/domain/core/value_validators.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 1000;
  factory NoteBody(String input) {
    assert(input != null);
    return NoteBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  NoteBody._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 30;
  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  TodoName._(this.value);
}

class NoteColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;
  static const maxLength = 30;

  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];
  factory NoteColor(Color input) {
    assert(input != null);
    return NoteColor._(
      right(
        makeColorOpaque(input),
      ),
    );
  }

  NoteColor._(this.value);
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 3;
  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(validateMaxListLength(input, maxLength));
  }

  List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
