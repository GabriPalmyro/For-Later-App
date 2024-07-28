import 'dart:developer';

import 'package:metadata_fetch/metadata_fetch.dart';

class LinkEmbeder {
  LinkEmbeder._();

  static Future<Metadata> fetchMetadata(link) async {
    final myURL = urlsFromString(link).first;

    // Use the `MetadataFetch.extract()` function from metadata_fetch package to fetch data from the url
    final data = await MetadataFetch.extract(myURL);

    if (data == null) {
      throw Exception('Failed to fetch metadata');
    }

    log('Metadata: $data');

    return data;
  }

  static List<String> urlsFromString(String text) {
    // Extracts all the links from the text
    // and returns a list of links
    final RegExp exp = RegExp(r'((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?');
    final Iterable<RegExpMatch> matches = exp.allMatches(text);

    return matches.map((match) => text.substring(match.start, match.end)).toList();
  }
}
