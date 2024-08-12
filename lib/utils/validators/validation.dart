
class MyValidator{

  static String? validateEmptyField(String? fieldName, String? value){
    if(value == null || value.isEmpty){
      return '$fieldName is required';
    }
    return null;
  }

  static String? validatePinCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Pincode is required';
    }
    if (!RegExp(r"^[1-9][0-9]{5}$").hasMatch(value)) {
      return 'Enter a valid 6-digit pincode';
    }
    return null;
  }

  static String? validateEmail(String? value){
    if(value==null || value.isEmpty){
      return 'Email is required';
    }
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid Email Address';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if(value==null || value.isEmpty){
      return 'Password is required';
    }

    if(value.length < 6){
      return 'Password must be at-least 6 characters long';
    }

    if(!value.contains(RegExp(r"[A-Z]"))){
      return 'Password must contain at-least one uppercase letter';
    }

    if(!value.contains(RegExp(r"[0-9]"))){
      return 'Password must contain at-least one number';
    }

    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contain at-least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone number is required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required)';
    }
    return null;
  }

  static String? validateCheckboxes(Map<String, bool> value) {
    // Check if at least one checkbox is selected
    bool atleastOneSelected = value.containsValue(true);

    // If no checkbox is selected, return an error message
    if (!atleastOneSelected) {
      return 'At least one option must be selected';
    }

    // If at least one checkbox is selected, return null
    return null;
  }

}
