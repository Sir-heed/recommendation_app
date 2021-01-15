// https://documenter.getpostman.com/view/2909688/hotels/77iaMwv#113c2ecf-3971-a4ba-22e2-364aeba72215
// https://hotels-apis.herokuapp.com/
class Room {
  final String id, price, name;
  final List<String> facilities;
  Room(this.id, this.price, this.name, this.facilities);
}

class Hotel {
  final String id,
      hotelName,
      location,
      city,
      state,
      hotelsLink,
      updated,
      presentPrice;
  final List<String> features;
  final List<Room> roomTypes;
  Hotel(
    this.id,
    this.hotelName,
    this.location,
    this.city,
    this.state,
    this.hotelsLink,
    this.roomTypes,
    this.updated,
    this.features,
    this.presentPrice,
  );
}
