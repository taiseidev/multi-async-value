# MultiAsyncValue Package

## Overview

The multi_async_value package provides a set of extension functions on the AsyncValue class from the Riverpod package. These functions allow for the combination of multiple AsyncValue instances into a single AsyncValue that contains a record of the results. This is particularly useful in scenarios where you need to handle multiple asynchronous operations and render their results simultaneously in your Flutter application.

## Features
- Grouping of AsyncValues: Combine two or more AsyncValue instances into a single AsyncValue.

- Support for Different Combinations: Functions available for combining 2, 3, 4, or 5 AsyncValue instances.

- Error and Loading Handling: Properly handles scenarios where any of the AsyncValue instances are in a loading state or have encountered an error.

## Installation
To use the multi_async_value package in your Flutter project, add the following dependency to your pubspec.yaml file:

```yaml
dependencies:
  multi_async_value: ^0.0.1
```

## Usage
Import the package where you want to use it:

```dart
import 'package:multi_async_value/multi_async_value.dart';
```

Use the extension functions (group2, group3, group4, group5) to combine multiple AsyncValue instances:

```dart
final combinedValue = MultiAsyncValue.group2(asyncValue1, asyncValue2);
```

Example
Combining two AsyncValue instances:

```dart
final asyncValue1 = AsyncValue.data(1);
final asyncValue2 = AsyncValue.data('Hello');

final result = MultiAsyncValue.group2(asyncValue1, asyncValue2);

// result is now an AsyncValue containing a record (1, 'Hello')
```

## Contributing
Contributions to the multi_async_value package are welcome. Please feel free to open an issue or create a pull request.
