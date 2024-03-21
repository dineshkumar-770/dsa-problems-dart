class ExecptSelfArrayProduct {
  List<int> productArrayExecptSelf(List<int> nums) {
    int n = nums.length;

    List<int> leftProductList = List.filled(n, 1);
    List<int> rightProductList = List.filled(n, 1);

    for (int i = 1; i < n; i++) {
      leftProductList[i] = leftProductList[i - 1] * nums[i - 1];
    }

    for (int i = n - 2; i >= 0; i--) {
      rightProductList[i] = rightProductList[i + 1] * nums[i + 1];
    }

    List<int> answer = List.filled(n, 1);
    for (int i = 0; i < n; i++) {
      answer[i] = leftProductList[i] * rightProductList[i];
    }

    return answer;
  }
}
