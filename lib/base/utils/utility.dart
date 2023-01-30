class Utility {
  static validateField(String? value) {
    if (value == null || value.isEmpty) {
      return "field required";
    }
    return null;
  }

  static validatePhone(String? value) {
    if (value == null) {
      return "field required";
    } else if (value.isEmpty) {
      return "field required";
    } else if (value.length < 10) {
      return 'invalid mobile no';
    }
    return null;
  }
}
