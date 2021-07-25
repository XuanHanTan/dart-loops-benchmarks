import 'dart:math';

import 'package:benchmark_harness/benchmark_harness.dart';

// Create a new benchmark by extending BenchmarkBase
class TemplateBenchmarkWhileUncached extends BenchmarkBase {
  TemplateBenchmarkWhileUncached() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkWhileUncached().report();
  }

  // The benchmark code.
  @override
  void run() {
    var count = 0;
    num eachElement = 0;
    while (count < list.length) {
      eachElement = pow(list[count], 3);
      count++;
    }
  }
}

class TemplateBenchmarkWhileCached extends BenchmarkBase {
  TemplateBenchmarkWhileCached() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkWhileCached().report();
  }

  // The benchmark code.
  @override
  void run() {
    var count = 0;
    num eachElement = 0;
    var length = list.length;
    while (count < length) {
      eachElement = pow(list[count], 3);
      count++;
    }
  }
}

class TemplateBenchmarkWhileReversed extends BenchmarkBase {
  TemplateBenchmarkWhileReversed() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkWhileReversed().report();
  }

  // The benchmark code.
  @override
  void run() {
    var count = list.length - 1;
    num eachElement = 0;
    while (count >= 0) {
      eachElement = pow(list[count], 3);
      count--;
    }
  }
}

class TemplateBenchmarkForUncached extends BenchmarkBase {
  TemplateBenchmarkForUncached() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkForUncached().report();
  }

  // The benchmark code.
  @override
  void run() {
    num eachElement = 0;
    for (var i = 0; i < list.length; i++) {
      eachElement = pow(list[i], 3);
    }
  }
}

class TemplateBenchmarkForCached extends BenchmarkBase {
  TemplateBenchmarkForCached() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkForCached().report();
  }

  // The benchmark code.
  @override
  void run() {
    num eachElement = 0;
    var length = list.length;
    for (var i = 0; i < length; i++) {
      eachElement = pow(list[i], 3);
    }
  }
}

class TemplateBenchmarkForReversed extends BenchmarkBase {
  TemplateBenchmarkForReversed() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkForReversed().report();
  }

  // The benchmark code.
  @override
  void run() {
    num eachElement = 0;
    for (var i = list.length - 1; i >= 0; i--) {
      eachElement = pow(list[i], 3);
    }
  }
}

class TemplateBenchmarkForIn extends BenchmarkBase {
  TemplateBenchmarkForIn() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkForIn().report();
  }

  // The benchmark code.
  @override
  void run() {
    num eachElement = 0;
    for (var element in list) {
      eachElement = pow(element, 3);
    }
  }
}

class TemplateBenchmarkForEach extends BenchmarkBase {
  TemplateBenchmarkForEach() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkForEach().report();
  }

  // The benchmark code.
  @override
  void run() {
    num eachElement = 0;
    list.forEach((element) {
      eachElement = pow(element, 3);
    });
  }
}

class TemplateBenchmarkMap extends BenchmarkBase {
  TemplateBenchmarkMap() : super('Template');
  final List<int> list = List.generate(3000000, (i) => i);
  static void main() {
    TemplateBenchmarkMap().report();
  }

  // The benchmark code.
  @override
  void run() {
    num eachElement = 0;
    list.map((e) {
      eachElement = pow(e, 3);
    }).toList();
  }
}

void main(List<String> arguments) {
  print('while uncached');
  TemplateBenchmarkWhileUncached.main();
  print('while cached');
  TemplateBenchmarkWhileCached.main();
  print('while reversed');
  TemplateBenchmarkWhileReversed.main();
  print('for uncached');
  TemplateBenchmarkForUncached.main();
  print('for cached');
  TemplateBenchmarkForCached.main();
  print('for reversed');
  TemplateBenchmarkForReversed.main();
  print('for...in');
  TemplateBenchmarkForIn.main();
  print('forEach');
  TemplateBenchmarkForEach.main();
  print('map');
  TemplateBenchmarkMap.main();
}
