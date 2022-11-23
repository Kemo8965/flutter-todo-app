// ignore: empty_constructor_bodies
class Person {
  final name;
  final phone;
  final picture;
  final email;
  final address;
  final about;

  const Person(this.name, this.phone, this.picture, this.email, this.address,
      this.about);
}

final List<Person> people = _people
    .map((e) => Person(e['name'], e['phone'], e['picture'], e['email'],
        e['address'], e['about']))
    .toList(growable: false);

final List<Map<String, Object>> _people = [
  {
    "id": "0001",
    "index": 0,
    "guid": "a0101-b0202-c0303-d0404",
    "isActive": true,
    "balance": "\K24,500.89",
    "picture": "../../images/cows2.jpg",
    "age": 30,
    "eyeColor": "green",
    "name": "Mike Banda",
    "gender": "male",
    "company": "PARMALAT",
    "email": "mikebanda@parmalat.com",
    "phone": "+260 978-909-080",
    "address": "Clifford Street, Lusaka, Zambia",
    "about": "Mike is a jaid ohn, but he's alright",
    "registered": "2022-08-02T04:34:13 +02:00",
    "latitude": -42.501107,
    "longitude": 133.670107,
    "tags": ["wild", "mint", "fresh", "spazz"],
    "friends": [
      {"id": 0, "name": "Tammy Phiri"},
      {"id": 1, "name": "Norman Brown"},
      {"id": 2, "name": "Tony Vitolo"},
    ],
    "greeting": "Hello, Mike Banda! You have 2 unread messages.",
    "favoriteFruit": "Apple"
  },
  {
    "id": "0002",
    "index": 0,
    "guid": "a0102-b0202-c0303-d0404",
    "isActive": true,
    "balance": "\K2,500.89",
    "picture": "../../images/cows.jpg",
    "age": 20,
    "eyeColor": "green",
    "name": "Miya Vertali",
    "gender": "female",
    "company": "BAYER",
    "email": "mikebanda@bayer.com",
    "phone": "+260 972-909-080",
    "address": "Cliffdale Street, Lusaka, Zambia",
    "about": "Miya is a jaid guza, but she's alright",
    "registered": "2022-08-02T04:34:13 +02:00",
    "latitude": -42.501107,
    "longitude": 133.670107,
    "tags": ["wild", "mint", "fresh", "peng"],
    "friends": [
      {"id": 0, "name": "Tammy Phiri"},
      {"id": 1, "name": "Norman Brown"},
      {"id": 2, "name": "Tony Vitolo"},
    ],
    "greeting": "Hello, Miya Vertali! You have 12 unread messages.",
    "favoriteFruit": "Banana"
  },
  {
    "id": "0003",
    "index": 0,
    "guid": "a0103-b0202-c0303-d0404",
    "isActive": true,
    "balance": "\K44,500.89",
    "picture": "../../images/cows.jpg",
    "age": 30,
    "eyeColor": "grey",
    "name": "Derrick Neilson",
    "gender": "male",
    "company": "PARMALAT",
    "email": "derrickn@parmalat.com",
    "phone": "+260 968-909-080",
    "address": "Clifford Street, Lusaka, Zambia",
    "about": "Mike is a jaid ohn, but he's alright",
    "registered": "2022-08-02T04:34:13 +02:00",
    "latitude": -42.501107,
    "longitude": 133.670107,
    "tags": ["wild", "mint", "fresh", "spazz"],
    "friends": [
      {"id": 0, "name": "Tammy Phiri"},
      {"id": 1, "name": "Norman Brown"},
      {"id": 2, "name": "Tony Vitolo"},
    ],
    "greeting": "Hello, Derrick Neilson! You have 2 unread messages.",
    "favoriteFruit": "Apple"
  },
  {
    "id": "0004",
    "index": 0,
    "guid": "a0104-b0202-c0303-d0404",
    "isActive": true,
    "balance": "\K500.89",
    "picture": "../../images/cows3.jpg",
    "age": 30,
    "eyeColor": "green",
    "name": "Phil Banda",
    "gender": "male",
    "company": "PARMALAT",
    "email": "philz@parmalat.com",
    "phone": "+260 969-909-999",
    "address": "Clifford Street, Lusaka, Zambia",
    "about": "Phil is a jaid ohn, but he's alright",
    "registered": "2022-08-02T04:34:13 +02:00",
    "latitude": -42.501107,
    "longitude": 133.670107,
    "tags": ["wild", "mint", "fresh", "spazz"],
    "friends": [
      {"id": 0, "name": "Tammy Phiri"},
      {"id": 1, "name": "Norman Brown"},
      {"id": 2, "name": "Tony Vitolo"},
    ],
    "greeting": "Hello, Phil Zimba! You have 2 unread messages.",
    "favoriteFruit": "Apple"
  },
  {
    "id": "0005",
    "index": 0,
    "guid": "a0105-b0202-c0303-d0404",
    "isActive": true,
    "balance": "\K224,500.89",
    "picture": "../../images/cows.jpg",
    "age": 60,
    "eyeColor": "green",
    "name": "Bradley Zimba",
    "gender": "male",
    "company": "PARMALAT",
    "email": "bradleyz@parmalat.com",
    "phone": "+260 978-909-111",
    "address": "Clifford Street, Lusaka, Zambia",
    "about": "Brad is a willllld ohn, but he's alright",
    "registered": "2022-08-02T04:34:13 +02:00",
    "latitude": -42.501107,
    "longitude": 133.670107,
    "tags": ["wild", "mint", "fresh", "spazz"],
    "friends": [
      {"id": 0, "name": "Tammy Phiri"},
      {"id": 1, "name": "Norman Brown"},
      {"id": 2, "name": "Tony Vitolo"},
    ],
    "greeting": "Hello, Bradley Zimba! You have 2 unread messages.",
    "favoriteFruit": "Apple"
  },
  {
    "id": "0006",
    "index": 0,
    "guid": "a0106-b0202-c0303-d0404",
    "isActive": false,
    "balance": "\K240,500.89",
    "picture": "../../images/cows2.jpg",
    "age": 40,
    "eyeColor": "green",
    "name": "Nigel Xhosa",
    "gender": "male",
    "company": "PARMALAT",
    "email": "nigelx@parmalat.com",
    "phone": "+260 966-459-240",
    "address": "Clifford Street, Lusaka, Zambia",
    "about": "Nigel is a crazy ohn, but he's alright",
    "registered": "2022-08-02T04:34:13 +02:00",
    "latitude": -42.501107,
    "longitude": 133.670107,
    "tags": ["wild", "mint", "fresh", "spazz"],
    "friends": [
      {"id": 0, "name": "Tammy Phiri"},
      {"id": 1, "name": "Norman Brown"},
      {"id": 2, "name": "Tony Vitolo"},
    ],
    "greeting": "Hello, Nigel Xhosa! You have 2 unread messages.",
    "favoriteFruit": "Apple"
  },
];
