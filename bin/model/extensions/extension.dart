import '../bmw.dart';
import '../car.dart';

extension NonNullString on String? {
  // String name = null; name ?? '' >>
  // >> name.onNull()
  String onNull() {
    if (this == null) {
      return '';
    } else {
      return this!;
    }
  }
}


extension NonNullInt on int? {
  // int name = null; name ?? '' >>
  // >> name.onNull()
  int onNull() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

extension NonNullCar on Car?{
  Car onNull() {
    if(this == null){
      return BMW('name', 'description');
    }else {
      return this!;
    }
  }
}