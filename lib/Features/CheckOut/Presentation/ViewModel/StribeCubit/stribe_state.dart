abstract class StribeState {}

final class StribeInitial extends StribeState {}

final class StribeLoading extends StribeState {}

final class StribeSuccess extends StribeState {}

final class StribeFailure extends StribeState {
  final String error;

  StribeFailure({required this.error});
}
