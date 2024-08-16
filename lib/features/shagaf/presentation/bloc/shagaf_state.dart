part of 'shagaf_bloc.dart';

abstract class ShagafState {
  const ShagafState();

  @override
  List<Object> get props => [];
}

class ShagafInitial extends ShagafState {}

class changeindexstate extends ShagafState {
  int index=0;
   
  changeindexstate(this.index, );
}
