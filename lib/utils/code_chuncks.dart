import 'package:freezed_annotation/freezed_annotation.dart';

enum MyTest {
  @JsonValue('value')
  OK,
  CANCEL,
  FALSE,
  TRUE,
}

tets() {
  MyTest.values.map((value) => print(value));
}
