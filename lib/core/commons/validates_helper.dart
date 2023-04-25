class ValidatesHelper {
  titleValidate(String value, String valueType) {
    if (value.isEmpty) {
      return 'Введите ваше $valueType, пожалуйста';
    } else {
      return null;
    }
  }

  phoneValidate(String value) {
    if (value.isNotEmpty) {
      return null;
    } else {
      return 'Введите ваш номер';
    }
  }
}
