import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/trip.dart';
import '../repositories/trip_repository.dart';

class GetTrips {
  final TripRepository repository;

  GetTrips({
    required this.repository,
  });

  Future<Either<Failure, List<Trip>>> call() {
    return repository.getTrips();
  }
}
