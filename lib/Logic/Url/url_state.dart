part of 'url_bloc.dart';

@immutable
abstract class UrlState {}

final class UrlInitial extends UrlState {}

final class UrlLoaded extends UrlState {
  final String url;
  UrlLoaded({required this.url});
}

final class UrlError extends UrlState {
  final String error;
  UrlError({required this.error});
}


