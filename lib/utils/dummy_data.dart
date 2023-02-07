import 'package:email_password_login/model/field_facility.dart';
import 'package:email_password_login/model/field_order.dart';
import 'package:email_password_login/model/sport_category.dart';
import 'package:email_password_login/model/sport_field.dart';
import 'package:email_password_login/model/user.dart';

var sampleUser = User(
    id: "user01",
    name: "",
    email: "reyhannathaniel121@gmail.com",
    accountType: "Premium",
    imageProfile: "assets/images/user_profile_example1.png");

var _Surabaya = BusCategory(
  name: "Surabaya",
  image: "assets/icons/Surabaya.png",
);
var _Kediri = BusCategory(
  name: "Kediri",
  image: "assets/icons/Kediri.png",
);
var _Jakarta = BusCategory(
  name: "Jakarta",
  image: "assets/icons/Jakarta.png",
);
var _Jogja = BusCategory(
  name: "Jogja",
  image: "assets/icons/Jogja.png",
);
var _Bandung = BusCategory(
  name: "Bandung",
  image: "assets/icons/Bandung.png",
);

List<BusCategory> sportCategories = [
  _Surabaya,
  _Bandung,
  _Jakarta,
  _Kediri,
  _Jogja,
];

var _wifi = FieldFacility(name: "WiFi", imageAsset: "assets/icons/wifi.png");
var _toilet =
    FieldFacility(name: "Toilet", imageAsset: "assets/icons/toilet.png");
var _changingRoom = FieldFacility(
    name: "Changing Room", imageAsset: "assets/icons/changing_room.png");
var _canteen =
    FieldFacility(name: "Canteen", imageAsset: "assets/icons/canteen.png");
var _locker =
    FieldFacility(name: "Lockers", imageAsset: "assets/icons/lockers.png");
var _chargingArea = FieldFacility(
    name: "Charging Area", imageAsset: "assets/icons/charging.png");

SportField Terminal_Kediri = SportField(
  id: "01",
  name: "Terminal Kediri",
  address: "Jendral Sudirman street no. 31",
  category: _Kediri,
  facilities: [_wifi, _toilet],
  phoneNumber: "0812 2345 6789",
  openDay: "Monday to Sunday",
  openTime: "08.00",
  closeTime: "16.00",
  imageAsset: "assets/images/Kediri.jpg",
  price: 80000,
  author: "Daniel larionov",
  authorUrl: "https://unsplash.com/@foxysnaps",
  imageUrl: "https://unsplash.com/photos/oXCgQRsb2ug",
);

SportField Purabaya = SportField(
    id: "02",
    name: "Terminal Purabaya",
    address: "Kasian, Bungurasih, Kec. Waru, Kabupaten Sidoarjo, Jawa Timur",
    category: _Surabaya,
    facilities: [_wifi, _toilet, _changingRoom, _canteen],
    author: "BPTD Wilayah XI Jawa Timur",
    authorUrl: "https://unsplash.com/@fiercelupus",
    imageUrl: "https://unsplash.com/photos/zygvOSND4rI",
    phoneNumber: "0812 3333 4444",
    openDay: "All Day",
    openTime: "07.00",
    closeTime: "22.00",
    imageAsset: "assets/images/purabaya.png",
    price: 100000);
SportField Senen = SportField(
    id: "03",
    name: "Terminal Senen",
    address: "RW.3, Senen, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta",
    category: _Jakarta,
    facilities: [_wifi, _toilet, _canteen, _chargingArea, _changingRoom],
    author: "Meritt Thomas",
    authorUrl: "https://unsplash.com/@merittthomas",
    imageUrl: "https://unsplash.com/photos/rgo4m8J0H2M",
    phoneNumber: "0866 7777 8888",
    openDay: "All Day",
    openTime: "07.00",
    closeTime: "17.00",
    imageAsset: "assets/images/Senen.jpg",
    price: 115000);
SportField Giwangan = SportField(
    id: "04",
    name: "Terminal Giwangan",
    address: "Giwangan, Kec. Kiaracondong, Kota Bandung, Jawa Barat ",
    category: _Jogja,
    facilities: [_wifi, _toilet, _canteen],
    author: "Ivan cortez",
    authorUrl: "https://unsplash.com/@ivancortez14",
    imageUrl: "https://unsplash.com/photos/c9aGBqkeoE4",
    phoneNumber: "0833 4444 5555",
    openDay: "All Day",
    openTime: "09.00",
    closeTime: "23.00",
    imageAsset: "assets/images/Giwangan.jpg",
    price: 50000);
SportField Wonokromo = SportField(
    id: "05",
    name: "Terminal Wonokromo",
    address: "Kalimegah street no. 55",
    category: _Surabaya,
    facilities: [_toilet],
    author: "Ilnur kalimullin",
    authorUrl: "https://unsplash.com/@kalimullin",
    imageUrl: "https://unsplash.com/photos/kP1AxmCyEXM",
    phoneNumber: "0888 9999 1111",
    openDay: "All Day",
    openTime: "06.00",
    closeTime: "18.00",
    imageAsset: "assets/images/Wonokromo.jpg",
    price: 75000);

SportField Bratang = SportField(
    id: "06",
    name: "Terminal Bratang",
    address: "Jl. Nginden Kota II No.1, Baratajaya, Kec. Gubeng, Kota SBY",
    category: _Surabaya,
    facilities: [_toilet],
    author: "Lucas Marcomini",
    authorUrl: "https://unsplash.com/@lucasmarcomini",
    imageUrl: "https://unsplash.com/photos/77pAlgB8v_E",
    phoneNumber: "0855 6666 7777",
    openDay: "All Day",
    openTime: "09.00",
    closeTime: "18.00",
    imageAsset: "assets/images/Bratang.jpg",
    price: 85000);

SportField Leuwipanjang = SportField(
    id: "07",
    name: "Terminal Leuwipanjang",
    address: "Kartanegara street no 76",
    category: _Bandung,
    facilities: [_wifi, _toilet, _locker],
    author: "Denise chan",
    authorUrl: "https://unsplash.com/photos/hAr9Nlo2Fz4",
    imageUrl: "https://unsplash.com/@noripurrs",
    phoneNumber: "0811 2222 3333",
    openDay: "All Day",
    openTime: "08.00",
    closeTime: "17.00",
    imageAsset: "assets/images/Leuwipanjang.jpg",
    price: 65000);

SportField Ledeng = SportField(
    id: "08",
    name: "Terminal Ledeng",
    address: "Prakasa street no. 29",
    category: _Bandung,
    facilities: [_toilet, _changingRoom, _chargingArea],
    author: "Rob coates",
    authorUrl: "https://unsplash.com/@itsrobcoates",
    imageUrl: "https://unsplash.com/photos/BDCTRVu7DwY",
    phoneNumber: "0877 8888 9999",
    openDay: "All Day",
    openTime: "08.00",
    closeTime: "15.00",
    imageAsset: "assets/images/Ledeng.jpg",
    price: 60000);

SportField TAMANAN = SportField(
    id: "09",
    name: "TERMINAL TAMANAN",
    address: "Sinagara street no. 53",
    category: _Kediri,
    facilities: [_toilet, _canteen],
    author: "Izuddin Helmi Adnan",
    authorUrl: "https://unsplash.com/@izuddinhelmi",
    imageUrl: "https://unsplash.com/photos/siurZcdJGEw",
    phoneNumber: "0844 5555 6666",
    openDay: "All Day",
    openTime: "08.00",
    closeTime: "18.00",
    imageAsset: "assets/images/TAMANAN.jpg",
    price: 70000);

SportField Antapani = SportField(
    id: "010",
    name: "Terminal Antapani",
    address: "Veteran street no. 93",
    category: _Bandung,
    facilities: [_toilet, _changingRoom, _locker, _canteen],
    author: "Sergei Wing",
    authorUrl: "https://unsplash.com/@sergeiwing",
    imageUrl: "https://unsplash.com/photos/Bt-oCv_YI3E",
    phoneNumber: "0899 1010 2222",
    openDay: "All Day",
    openTime: "09.00",
    closeTime: "17.00",
    imageAsset: "assets/images/Antapani.jpg",
    price: 80000);

List<SportField> sportFieldList = [
  Terminal_Kediri,
  Purabaya,
  Senen,
  Giwangan,
  Wonokromo,
  Bratang,
  Leuwipanjang,
  Ledeng,
  TAMANAN,
  Antapani,
];

List<SportField> recommendedSportField = [
  Purabaya,
  Antapani,
  Senen,
  Giwangan,
  Terminal_Kediri
];

List<FieldOrder> dummyUserOrderList = [];

List<String> timeToBook = [
  "06.00",
  "07.00",
  "08.00",
  "09.00",
  "10.00",
  "11.00",
  "12.00",
  "13.00",
  "14.00",
  "15.00",
  "16.00",
  "17.00",
  "18.00",
  "19.00",
  "20.00",
  "21.00",
  "22.00",
  "23.00"
];
