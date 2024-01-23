library multi_async_value;

import 'package:riverpod/riverpod.dart';

extension MultiAsyncValue on AsyncValue {
  static AsyncValue<(T1, T2)> group2<T1, T2>(
    AsyncValue<T1> t1,
    AsyncValue<T2> t2,
  ) {
    if (t1 is AsyncLoading || t2 is AsyncLoading) {
      return const AsyncLoading();
    }

    try {
      return AsyncData((
        t1.value as T1,
        t2.value as T2,
      ));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }

  static AsyncValue<(T1, T2, T3)> group3<T1, T2, T3>(
    AsyncValue<T1> t1,
    AsyncValue<T2> t2,
    AsyncValue<T3> t3,
  ) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading) {
      return const AsyncLoading();
    }

    try {
      return AsyncData((
        t1.value as T1,
        t2.value as T2,
        t3.value as T3,
      ));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }

  static AsyncValue<(T1, T2, T3, T4)> group4<T1, T2, T3, T4>(
    AsyncValue<T1> t1,
    AsyncValue<T2> t2,
    AsyncValue<T3> t3,
    AsyncValue<T4> t4,
  ) {
    if (t1 is AsyncLoading ||
        t2 is AsyncLoading ||
        t3 is AsyncLoading ||
        t4 is AsyncLoading) {
      return const AsyncLoading();
    }

    try {
      return AsyncData((
        t1.value as T1,
        t2.value as T2,
        t3.value as T3,
        t4.value as T4,
      ));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }

  static AsyncValue<(T1, T2, T3, T4, T5)> group5<T1, T2, T3, T4, T5>(
    AsyncValue<T1> t1,
    AsyncValue<T2> t2,
    AsyncValue<T3> t3,
    AsyncValue<T4> t4,
    AsyncValue<T5> t5,
  ) {
    if (t1 is AsyncLoading ||
        t2 is AsyncLoading ||
        t3 is AsyncLoading ||
        t4 is AsyncLoading ||
        t5 is AsyncLoading) {
      return const AsyncLoading();
    }

    try {
      return AsyncData((
        t1.value as T1,
        t2.value as T2,
        t3.value as T3,
        t4.value as T4,
        t5.value as T5,
      ));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
}
