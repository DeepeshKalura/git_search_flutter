part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class GetCodeSearchEvent extends SearchEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
