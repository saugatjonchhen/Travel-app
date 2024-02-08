import '../entities/trip.dart';
import '../repositories/trip_repository.dart';

class AddTrip {
  final TripRepository repository;

  AddTrip({
    required this.repository,
  });

  Future<void> call(Trip trip) {
    return repository.addTrip(trip);
  }
}
