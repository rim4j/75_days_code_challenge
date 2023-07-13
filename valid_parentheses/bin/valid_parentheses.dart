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
  bool result = isValid("[}{}]");
  print(result);
}

bool isValid(String s) {
  String a = "()";
  String b = "{}";
  String c = "[]";

  if (s.isEmpty) {
    return false;
  } else {
    while (s.isNotEmpty) {
      if (s.contains(a)) {
        s = s.replaceAll(a, '');
      } else if (s.contains(b)) {
        s = s.replaceAll(b, '');
      } else if (s.contains(c)) {
        s = s.replaceAll(c, '');
      } else {
        return false;
      }
    }
    return true;
  }
}
