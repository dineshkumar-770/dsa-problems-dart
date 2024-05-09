class FibonaicSeries {
  static List<int> fibonaic(int n) {
    int a = 0;
    int b = 1;
    List<int> series = [0];
    if (n == 0 || n == 1) {
      return [n];
    }

    for (int i = 0; i < n; i++) {
      int c = a + b;
      a = b;
      b = c;
      series.add(c);
    }
    print(series);
    print(series.length);
    return series;
  }
}
