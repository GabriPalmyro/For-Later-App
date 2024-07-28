import 'package:flutter/material.dart';
import 'package:metadata_fetch/metadata_fetch.dart';
import 'package:url_launcher/url_launcher.dart';

class EmbededWidget extends StatelessWidget {
  const EmbededWidget({required this.metadata, super.key});

  final Metadata metadata;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          if (metadata.url != null) {
            launchUrl(Uri.parse(metadata.url!));
          }
        },
        child: Container(
          decoration: BoxDecoration(color: const Color.fromARGB(255, 207, 207, 207), borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(metadata.title ?? ''),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  metadata.description ?? '',
                  maxLines: 2,
                  style: const TextStyle(color: Color.fromARGB(255, 82, 80, 80), fontSize: 10),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                if (metadata.image != null)
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                          metadata.image!,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  metadata.url ?? '',
                  style: const TextStyle(color: Color.fromARGB(255, 82, 80, 80), fontSize: 8),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
