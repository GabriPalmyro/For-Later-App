enum Routes {
  splash('/'),
  debugging('/debugging'),
  home('/home'),
  newItem('/new-item'),
  login('/login');

  const Routes(this.path);

  final String path;

  @override
  String toString() => name;
}
