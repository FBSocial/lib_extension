extension UriExtension on Uri {
  Uri copy(
      {String? scheme,
      String? userInfo,
      String? host,
      int? port,
      String? path,
      Iterable<String>? pathSegments,
      String? query,
      Map<String, dynamic /*String|Iterable<String>*/ >? queryParameters,
      String? fragment}) {
    if (hasFragment) {
      fragment ??= this.fragment;
    }

    if (queryParameters != null) {
      query = null;
    } else {
      query ??= this.query;
    }

    return Uri(
      scheme: scheme ?? this.scheme,
      userInfo: userInfo ?? this.userInfo,
      host: host ?? this.host,
      port: port ?? this.port,
      path: path ?? this.path,
      fragment: fragment,
      query: query,
      queryParameters: queryParameters,
    );
  }

  Uri addParams(Map<String, String?> params) {
    if (params.isEmpty) {
      return this;
    }
    params.addAll(queryParameters);
    return copy(queryParameters: params);
  }
}
