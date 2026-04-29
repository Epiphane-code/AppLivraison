import 'package:flutter/material.dart';
import 'package:app_express/models/foods.dart';


Widget foodCard(BuildContext context, Food food) {
  return Column(
    children: [
      Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                food.imageUrl,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return Center(child: Icon(Icons.broken_image, size: 50, color: Colors.grey));
                },
              ),
            ),
            Text(
              ' ${food.name}',
              style: TextStyle(fontWeight: FontWeight(1000)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(' ${food.description}', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, ),)),
                Text(
                  '${food.restaurant} ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(' FCA ${food.price} '),
                Text('Overture: ${food.horaireDisponibilite} '),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Voir plus',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).appBarTheme.foregroundColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 7),
          ],
        ),
      ),
      Divider(),
    ],
  );
}
