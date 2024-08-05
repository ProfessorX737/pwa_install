class JS {
  final String? name;
  const JS([this.name]);
}

typedef JSExportedDartFunction = void Function();

extension JSCompatible<T extends Function> on T {
  JSExportedDartFunction get toJS => () {
        throw UnimplementedError();
      };
}
