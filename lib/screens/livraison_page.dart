import 'package:app_express/models/livraisons.dart';
import 'package:flutter/material.dart';

class LivraisonPage extends StatefulWidget {
  const LivraisonPage({super.key});

  @override
  State<LivraisonPage> createState() => _LivraisonPageState();
}

class _LivraisonPageState extends State<LivraisonPage> {
  List<Livraison> livraisons = [];

  @override
  void initState() {
    super.initState();
    // Simulate fetching data from an API or database
    fetchLivraisons();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            (livraisons.isEmpty)
                ? Text(
                    'Aucune livraison en cours pour le moment',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).appBarTheme.backgroundColor,
                    ),
                  )
                : Column(
                    children: livraisons.map((livraison) {
                      return Card(
                        child: ListTile(
                          title: Text("${livraison.adresseSource} --->  ${livraison.adresseDestination}"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(livraison.nature),
                              Text(livraison.dateCreate!)
                            ],
                          ),
                          leading: Icon(Icons.delivery_dining_outlined),
                          trailing: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Theme.of(context).appBarTheme.backgroundColor
                            ),
                            child: Text(livraison.statut, style: TextStyle(
                              color: Theme.of(context).appBarTheme.foregroundColor
                            ),),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
          ],
        ),
      ),
    );
  }

  void fetchLivraisons() {
      setState(() {
        // Example data, replace with actual data fetching logic
        livraisons = [
          Livraison(
            id: '1',
            adresseSource: "Bobiel",
            adresseDestination: "Aeroport",
            telephoneSouce: "96008843",
            telephoneDestination: "97969798",
            dateCreate: "aujourd'hui 12:45",
            nature: "Sachet",
            statut: "En cours",
          ),
          Livraison(
            id: '2',
            adresseSource: "Dar salam",
            adresseDestination: "Banifandou",
            telephoneSouce: "96000844",
            telephoneDestination: "97963738",
            dateCreate: "aujourd'hui 12:45",
            nature: "Sac",
            statut: "En cours",
          ),
          Livraison(
            id: '3',
            adresseSource: "Koubia",
            adresseDestination: "Riyad",
            telephoneSouce: "96008844",
            telephoneDestination: "97961738",
            dateCreate: "aujourd'hui 12:45",
            nature: "bidon",
            statut: "En cours",
          ),
          Livraison(
            id: '4',
            adresseSource: "Goudel",
            adresseDestination: "SAtu",
            telephoneSouce: "90008844",
            telephoneDestination: "97069738",
            dateCreate: "aujourd'hui 12:45",
            nature: "kilichi",
            statut: "En cours",
          ),
          Livraison(
            id: '5',
            adresseSource: "Dar salam",
            adresseDestination: "Banifandou",
            telephoneSouce: "96000844",
            telephoneDestination: "97963738",
            dateCreate: "aujourd'hui 12:45",
            nature: "Sac",
            statut: "En cours",
          ),
          Livraison(
            id: '6',
            adresseSource: "Koubia",
            adresseDestination: "Riyad",
            telephoneSouce: "96008844",
            telephoneDestination: "97961738",
            dateCreate: "aujourd'hui 12:45",
            nature: "bidon",
            statut: "En cours",
          ),
          Livraison(
            id: '7',
            adresseSource: "Goudel",
            adresseDestination: "SAtu",
            telephoneSouce: "90008844",
            telephoneDestination: "97069738",
            dateCreate: "aujourd'hui 12:45",
            nature: "kilichi",
            statut: "En cours",
          ),
          Livraison(
            id: '8',
            adresseSource: "Dar salam",
            adresseDestination: "Banifandou",
            telephoneSouce: "96000844",
            telephoneDestination: "97963738",
            dateCreate: "aujourd'hui 12:45",
            nature: "Sac",
            statut: "En cours",
          ),
          Livraison(
            id: '9',
            adresseSource: "Koubia",
            adresseDestination: "Riyad",
            telephoneSouce: "96008844",
            telephoneDestination: "97961738",
            dateCreate: "aujourd'hui 12:45",
            nature: "bidon",
            statut: "En cours",
          ),
          Livraison(
            id: '10',
            adresseSource: "Goudel",
            adresseDestination: "SAtu",
            telephoneSouce: "90008844",
            telephoneDestination: "97069738",
            dateCreate: "aujourd'hui 12:45",
            nature: "kilichi",
            statut: "En cours",
          ),
        ];
      });
  }
}
