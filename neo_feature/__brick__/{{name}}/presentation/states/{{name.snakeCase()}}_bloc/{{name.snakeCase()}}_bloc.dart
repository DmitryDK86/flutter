import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import '../../../_{{name.snakeCase()}}.dart';

part '{{name.snakeCase()}}_bloc.freezed.dart';
part '{{name.snakeCase()}}_bloc.g.dart';
part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_event.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc({
    required {{name.pascalCase()}}Repository repository,
  })  : _repository = repository,
        super(const {{name.pascalCase()}}State.initial()){
    on<{{name.pascalCase()}}EventInit>(_init);
  }

  final {{name.pascalCase()}}Repository _repository;

   FutureOr<void> _init(
    {{name.pascalCase()}}EventInit event,
    Emitter<{{name.pascalCase()}}State> emit,
   ) {
     emit(state.copyWith(status: FetchStatus.fetchingInProgress));
     emit(state.copyWith(status: FetchStatus.fetchingSuccess));
   }
}
