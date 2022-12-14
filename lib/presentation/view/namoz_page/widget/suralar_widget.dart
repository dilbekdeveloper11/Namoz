import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/namoz_data.dart';

class SuralarWidget extends StatefulWidget {
  const SuralarWidget({Key? key}) : super(key: key);

  @override
  State<SuralarWidget> createState() => _SuralarWidgetState();
}

class _SuralarWidgetState extends State<SuralarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 2.12,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: ListView.builder(
        itemCount: DataNamoz.arabTilida.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, __) {
          return Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.005),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: const Color.fromRGBO(12, 114, 100, 1),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 8),
                        child: Text(
                          DataNamoz.sura[__],
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "balo"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Text(
                          DataNamoz.arabTilida[__],
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 8),
                        child: Text(
                          DataNamoz.manosi[__],
                          style: const TextStyle(
                              color: Colors.black, fontFamily: "balo"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                DataNamoz.text2[__],
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "balo"),
              ),
            ],
          );
        },
      ),
    );
  }
}
