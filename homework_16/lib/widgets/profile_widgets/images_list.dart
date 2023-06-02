import 'package:flutter/material.dart';

class ImagesList extends StatelessWidget {
  const ImagesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.53,
                height: MediaQuery.of(context).size.height * 0.21,
                child: const ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.salla.sa/nGPyn/ZGo2Y0sjIjgQYjV7k91qQ8KGCXiqCGOfAjoqfDVV.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.21,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: const ClipRRect(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(50)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://cdn.salla.sa/nGPyn/0ioRadkwE8uZHsEH0kNad6jGNfIAquoy6V3YtJqz.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn.salla.sa/nGPyn/vUcWK7G39oeRIbEXHT8Njez716UsDav1bKKzvVVJ.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 9,
            height: MediaQuery.of(context).size.height * 0.14,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.salla.sa/nGPyn/Fj4tqqHnSnSpLpW1KGuvp9Ka64vMtqegMDF5gkST.jpg"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.salla.sa/nGPyn/0jSlIGhJDZyhAMpik42EYZTPgnYK4CKYXKldqTii.jpg"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.salla.sa/nGPyn/CyAVvu8aIpUxUPh65sfPiD5NnS9oEffgvEmhctpP.jpg"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
