List<Map< /*key*/ String, /*value*/ dynamic>> hotelList = [
  {
    'image': 'one.png',
    'place': 'Open Space', //1
    'destination': 'London',
    'price': '25'
  },
  {
    'image': 'two.png',
    'place': 'Global Hills', //2
    'destination': 'Nairobi',
    'price': 40
  },
  {
    'image': 'three.png',
    'place': 'Pioneer Avenue', //
    'destination': 'London',
    'price': 78
  }
];
//tickets
List<Map< /*key*/ String, /*value*/ dynamic>> ticketList = [
  {
    //map 1

    'from': {
      'code': 'NYC',
      'name': 'New York',
    },

    'to': {
      'code': 'LDN',
      'name': 'London',
    },
    'flying_time': '8H 30M',
    'date': '1 MAY',
    'departure_time': '5:00 PM',
    'number': 23,
  }, //end of  map 1

  //map 2
  {
    'from': {
      'code': 'NRB',
      'name': 'Nairobi',
    },
    'to': {
      'code': 'KSM',
      'name': 'Kisumu',
    },
    'flying_time': '7H 30M',
    'date': '12 MAY',
    'departure_time': '8:00 AM',
    'number': 283,
  }, //end of map 2

  //map 3
  {
    'from': {
      'code': 'BGM',
      'name': 'Bungmas',
    },
    'to': {
      'code': 'SZN',
      'name': 'Street Zone',
    },
    'flying_time': '12H 30M',
    'date': '16 MAY',
    'departure_time': '8=12:00 AM',
    'number': 73,
  } //end of map 3
];
