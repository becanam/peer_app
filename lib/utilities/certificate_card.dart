import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/certificates_list.dart';

class CertificateCard extends StatelessWidget {
  final Certificate certificate;
  const CertificateCard({Key? key, required this.certificate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 4.0,
                  spreadRadius: 05,
                )
              ],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(95),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(certificate.name,
                                textAlign: TextAlign.right,
                                style: appstyle(
                                  18,
                                  Colors.black,
                                  FontWeight.bold,
                                  height: 1.6
                                )),
                          ),
                          Text(certificate.year.toString(),
                              style: appstyle(
                                13,
                                Colors.black,
                                FontWeight.bold,
                                height: 1.6
                              )),
                          Text(certificate.result,
                              style: appstyle(
                                13,
                                Colors.black,
                                FontWeight.bold,
                                height: 1.6
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      child: Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                            color: const Color(0xff32DACE),
                            borderRadius: BorderRadius.circular(7),
                            border:
                                Border.all(width: 0.6, color: Colors.black)),
                        child: 
                              Text(
                                "Verified by PEER",
                                textAlign: TextAlign.center,
                                style: appstyle(
                                    13, Colors.black, FontWeight.normal, height: 1.8),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
