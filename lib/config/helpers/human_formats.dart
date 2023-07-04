import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number){

    String formattingNumber = number.toString().replaceAll('.', '');

    if(formattingNumber.length > 3 && formattingNumber.length < 7){
      switch (formattingNumber.length) {
        case 4:
          String first = formattingNumber.substring(0,1);
          String second = formattingNumber.substring(1,2);
          formattingNumber = '$first,$second mil';
          break;
        case 5:
          String first = formattingNumber.substring(0,2);
          String second = formattingNumber.substring(2,3);
          formattingNumber = '$first,$second mil';  
          break;
        case 6:
          String first = formattingNumber.substring(0,3);
          String second = formattingNumber.substring(3,4);
          formattingNumber = '$first,$second mil';
          break;
      }
    }else if(formattingNumber.length >= 7 && formattingNumber.length <= 9){
      switch (formattingNumber.length) {
        case 7:
          String first = formattingNumber.substring(0,1);
          String second = formattingNumber.substring(1,2);
          formattingNumber = '$first,$second mill';
          break;
        case 8:
          String first = formattingNumber.substring(0,2);
          String second = formattingNumber.substring(2,3);
          formattingNumber = '$first,$second mill';
        case 9:
          String first = formattingNumber.substring(0,3);
          String second = formattingNumber.substring(3,4);
          formattingNumber = '$first,$second mill';
        default:
      }
    }
    return formattingNumber;
  }

  static String rating(double number, int decimal){
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: decimal,
      symbol: '',
      locale: 'es'
    ).format(number);

    return formatterNumber;
  }
}