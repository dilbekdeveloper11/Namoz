import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data_tahorat_olish.dart';
import 'package:namoz_najotdir/presentation/view/tahorat_olish_page/widget/oq_container_widget.dart';

class GreenContainerWidget extends StatefulWidget {
  const GreenContainerWidget({Key? key}) : super(key: key);

  @override
  State<GreenContainerWidget> createState() => _GreenContainerWidgetState();
}

class _GreenContainerWidgetState extends State<GreenContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.77,
        width: MediaQuery.of(context).size.width,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 5),
              ),
            ],
            color: const Color.fromRGBO(12, 114, 100, 1),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.013),
                child: Text(
                  DataTahoratOlish.title[DataTahoratOlish.son],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'balo'),
                ),
              ),
              // ! const qoyilsa ushu filedagi malumot satstate bolmaydi
              const OqContainerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
