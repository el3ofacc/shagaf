part of 'shagaf_bloc.dart';

abstract class ShagafEvent {
  const ShagafEvent();

  @override
  List<Object> get props => [];
}

class changeindexevent extends ShagafEvent {
  int index=0;
 
  changeindexevent(this.index);
}

 