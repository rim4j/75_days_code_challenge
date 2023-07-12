// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type.

// Example 1:

// Input: s = "()"
// Output: true
// Example 2:

// Input: s = "()[]{}"
// Output: true
// Example 3:

// Input: s = "(]"
// Output: false

void main(List<String> arguments) {
  bool result = isValid("{[(())]}");
  print(result);
}

bool isValid(String s) {
  String d1 = "()";
  String d2 = "{}";
  String d3 = "[]";

  while (s.isNotEmpty) {
    if (s.contains(d1)) {
      s = s.replaceAll(d1, '');
    } else if (s.contains(d2)) {
      s = s.replaceAll(d2, '');
    } else if (s.contains(d3)) {
      s = s.replaceAll(d3, '');
    } else {
      return false;
    }
  }
  return true;
}
