## Déclaration de variables en Perl — notes

### Principe de base
- En Perl, les scalaires (nombres, chaînes) utilisent le sigil `$`. Les tableaux utilisent `@` et les hachages `%`.
- Pour écrire du code sûr, activez `use strict;` (oblige la déclaration des variables) et `use warnings;` (affiche des avertissements utiles).

### Déclaration lexicale
- Déclarez les variables locales avec `my` :
  - `my $name = "Arthur";`
  - `my $meaning_of_life = 42;`
- `our` déclare des variables package-globales et `local` restaure temporairement une variable globale.

### Chaînes vs nombres
- Les doubles quotes permettent l'interpolation des variables : `print "$name says\n";`
- Les simples quotes n'interpolent pas : `print '$name says\n';` (affiche littéralement `$name says\n`).
- En contexte numérique, Perl convertit automatiquement les chaînes qui ressemblent à des nombres.

### Littéraux numériques et erreur courante
- Entiers : `42`
- Virgule flottante : utilisez le point `.` comme séparateur décimal, par ex. `0.000001`.
- Notation scientifique : `3.27e17` est valide.

- Important : n'utilisez pas la virgule `,` comme séparateur décimal (ex. `0,000001`) — en Perl la virgule est l'opérateur de liste et ne produit pas la valeur décimale attendue.

### Opérations et interpolation
- Les opérations arithmétiques se font en contexte numérique : `my $sum = $meaning_of_life + $number_less_than_1;`
- Lors de l'impression avec des doubles quotes, la variable est interpolée : `print "$name says, 'The meaning of life is $sum.'\n";`

### Bonnes pratiques et pièges
- Toujours placer `use strict; use warnings;` en haut du script.
- Nommez les variables de façon lisible (snake_case ou camelCase), évitez les caractères non alphanumériques et les noms commençant par un chiffre.
- Faites attention à la portée (`my`) pour éviter les conflits et les fuites de variables globales.
- Pour déboguer, utilisez `warn` ou `print` et `Data::Dumper` pour structures complexes.



