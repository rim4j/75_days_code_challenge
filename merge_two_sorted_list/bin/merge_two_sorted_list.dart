// You are given the heads of two sorted linked lists list1 and list2.

// Return the head of the merged linked list.

// example1
// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]

// Example 2:
// Input: list1 = [], list2 = []
// Output: []

// Example 3:
// Input: list1 = [], list2 = [0]
// Output: [0]

void main(List<String> arguments) {
  List<int> list1 = [2, 5, 3, 4];
  List<int> list2 = [5, 22, 0, 1];

  var result = mergeTwoLists(list1, list2);
  print(result);
}

List<int> mergeTwoLists(List<int> list1, List<int> list2) {
  List<int> mergedList = [...list1, ...list2];

  mergedList.sort((a, b) => a.compareTo(b));

  return mergedList;
}
