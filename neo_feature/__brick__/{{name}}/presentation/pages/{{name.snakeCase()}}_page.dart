import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../_{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{name.pascalCase()}}Injection.sl<{{name.pascalCase()}}Bloc>()..init(),
      child: Scaffold(
        appBar: AppBar(title: const Text('{{name.pascalCase()}} page')),
        body: BlocBuilder<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
          builder: (context, state) {
            if (state.status.isFetchingInProgress) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status.isFetchingFailure) {
              return Center(
                child: Column(
                  children: [
                    Text(state.error ?? '')
                  ],
                ),
              );
            }

            if (state.status.isFetchingSuccess) {
              return Center(
                child: Column(
                  children: [
                    Text('isFetchingSuccess'),
                  ],
                ),
              );
            }

            return Center(child: Text(state.{{name.camelCase()}}?.title ?? 'Unknown'));
          },
        ),
      ),
    );
  }
}
