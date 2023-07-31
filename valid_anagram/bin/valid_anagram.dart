// Given two strings s and t, return true if t is an anagram of s, and false otherwise.

// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

// Example 1:

// Input: s = "anagram", t = "nagaram"
// Output: true
// Example 2:

// Input: s = "rat", t = "car"
// Output: false

void main() {
  bool isAnagram(String s, String t) {
    List<String> s1 = s.split("");
    List<String> t1 = t.split("");
    s1.sort();
    t1.sort();

    if (s1.length != t1.length) {
      return false;
    } else {
      for (var i = 0; i < s1.length; i++) {
        if (s1[i] != t1[i]) {
          return false;
        }
      }
      return true;
    }
  }

  var result = isAnagram("anagram", "nagaram");

  print(result);
}
