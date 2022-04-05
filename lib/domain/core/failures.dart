import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidPhotos({
    required T failedValue,
  }) = InvalidPhotos<T>;
  const factory ValueFailure.invalidDesignation({
    required T failedValue,
  }) = InvalidDesignation<T>;
  const factory ValueFailure.invalidComplement({
    required T failedValue,
  }) = InvalidComplement<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;
}
