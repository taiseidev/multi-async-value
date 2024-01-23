import 'package:flutter_test/flutter_test.dart';
import 'package:multi_async_value/multi_async_value.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  group('MultiAsyncValue extension tests', () {
    test('group2 combines two AsyncData values correctly', () {
      const value1 = AsyncData<int>(1);
      const value2 = AsyncData<String>('test');

      final result = MultiAsyncValue.group2(value1, value2);

      expect(result, isA<AsyncData>());
      expect(result.asData!.value, equals((1, 'test')));
    });

    test('group2 returns AsyncLoading if any value is loading', () {
      const value1 = AsyncData<int>(1);
      const value2 = AsyncLoading<String>();

      final result = MultiAsyncValue.group2(value1, value2);

      expect(result, isA<AsyncLoading>());
    });

    test('group2 returns AsyncError if any value has an error', () {
      const value1 = AsyncData<int>(1);
      final value2 = AsyncError<String>(Exception('Error'), StackTrace.empty);

      final result = MultiAsyncValue.group2(value1, value2);

      expect(result, isA<AsyncError>());
    });

    test('group3 combines three AsyncData values correctly', () {
      const value1 = AsyncData<int>(1);
      const value2 = AsyncData<String>('test');
      const value3 = AsyncData<bool>(false);

      final result = MultiAsyncValue.group3(value1, value2, value3);

      expect(result, isA<AsyncData>());
      expect(result.asData!.value, equals((1, 'test', false)));
    });

    test('group3 returns AsyncLoading if any value is loading', () {
      const value1 = AsyncData<int>(1);
      const value2 = AsyncLoading<String>();
      const value3 = AsyncData<bool>(false);

      final result = MultiAsyncValue.group3(value1, value2, value3);

      expect(result, isA<AsyncLoading>());
    });

    test('group3 returns AsyncError if any value has an error', () {
      const value1 = AsyncData<int>(1);
      final value2 = AsyncError<String>(Exception('Error'), StackTrace.empty);
      const value3 = AsyncData<bool>(false);

      final result = MultiAsyncValue.group3(value1, value2, value3);

      expect(result, isA<AsyncError>());
    });

    test('group4 combines four AsyncData values correctly', () {
      const value1 = AsyncData<int>(1);
      const value2 = AsyncData<String>('test');
      const value3 = AsyncData<bool>(false);
      const value4 = AsyncData<double>(1.0);

      final result = MultiAsyncValue.group4(value1, value2, value3, value4);

      expect(result, isA<AsyncData>());
      expect(result.asData!.value, equals((1, 'test', false, 1.0)));
    });

    test('group4 returns AsyncLoading if any value is loading', () {
      const value1 = AsyncData<int>(1);
      const value2 = AsyncLoading<String>();
      const value3 = AsyncData<bool>(false);
      const value4 = AsyncData<double>(1.0);

      final result = MultiAsyncValue.group4(value1, value2, value3, value4);

      expect(result, isA<AsyncLoading>());
    });

    test('group4 returns AsyncError if any value has an error', () {
      const value1 = AsyncData<int>(1);
      final value2 = AsyncError<String>(Exception('Error'), StackTrace.empty);
      const value3 = AsyncData<bool>(false);
      const value4 = AsyncData<double>(1.0);

      final result = MultiAsyncValue.group4(value1, value2, value3, value4);

      expect(result, isA<AsyncError>());
    });

    test('group5 combines four AsyncData values correctly', () {
      const value1 = AsyncData<int>(1);
      const value2 = AsyncData<String>('test');
      const value3 = AsyncData<bool>(false);
      const value4 = AsyncData<double>(1.0);
      const value5 = AsyncData<int>(2);

      final result =
          MultiAsyncValue.group5(value1, value2, value3, value4, value5);

      expect(result, isA<AsyncData>());
      expect(result.asData!.value, equals((1, 'test', false, 1.0, 2)));
    });

    test('group4 returns AsyncLoading if any value is loading', () {
      const value1 = AsyncData<int>(1);
      const value2 = AsyncLoading<String>();
      const value3 = AsyncData<bool>(false);
      const value4 = AsyncData<double>(1.0);
      const value5 = AsyncData<int>(2);

      final result =
          MultiAsyncValue.group5(value1, value2, value3, value4, value5);

      expect(result, isA<AsyncLoading>());
    });

    test('group4 returns AsyncError if any value has an error', () {
      const value1 = AsyncData<int>(1);
      final value2 = AsyncError<String>(Exception('Error'), StackTrace.empty);
      const value3 = AsyncData<bool>(false);
      const value4 = AsyncData<double>(1.0);
      const value5 = AsyncData<int>(2);

      final result =
          MultiAsyncValue.group5(value1, value2, value3, value4, value5);

      expect(result, isA<AsyncError>());
    });
  });
}
