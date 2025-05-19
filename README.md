# ministate

`ministate` is een eenvoudig R-package dat basisstatistieken berekent op een overzichtelijke en toegankelijke manier. Het is ideaal voor studenten en beginners in data-analyse die snel samenvattende statistieken willen genereren zonder complexe code.

## 🔧 Installatie

Je kunt dit package direct vanaf GitHub installeren met `devtools`:

```r
# Installeer devtools als je het nog niet hebt
install.packages("devtools")

# Installeer het ministate package vanaf GitHub
devtools::install_github("Amal189/ministate_package", build_vignettes = TRUE)
```

## 🛠️ Functies in dit package

| Functie       | Beschrijving                                    |
|---------------|--------------------------------------------------|
| `gem(x)`      | Berekent het gemiddelde van x, zonder NA's.      |
| `med(x)`      | Geeft de mediaan van x.                          |
| `modus(x)`    | Bepaalt de meest voorkomende waarde(n).          |
| `n(x)`        | Aantal niet-NA waarden.                          |
| `mini(x)`     | Minimum van x.                                   |
| `maxi(x)`     | Maximum van x.                                   |
| `spreid(x)`   | Spreidingsbreedte (max - min).                   |
| `kwartielen(x)`| Q1 en Q3.                                       |
| `iqr(x)`      | Interkwartielafstand.                            |
| `sdev(x)`     | Standaarddeviatie.                               |
| `sam()`       | Interactieve tabel met uitleg over alle functies.|
