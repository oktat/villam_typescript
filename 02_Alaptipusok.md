\newpage

# Alaptípusok

## Témák

* [Témák](#témák)
* [❖ A típusok](#-a-típusok)
* [❖ A number típus](#-a-number-típus)
* [❖ A string típus](#-a-string-típus)
* [❖ A boolean típus](#-a-boolean-típus)
* [❖ A null típus](#-a-null-típus)
* [❖ Az undefined típus](#-az-undefined-típus)
* [A bigint típus](#a-bigint-típus)
* [A symbol típus](#a-symbol-típus)

## ❖ A típusok

A TypeScript a következő alaptípusokat tartalmazza:

* number - Egész vagy valós szám.
* string - Karakterlánc.
* boolean - Logikai típus.
* null - Szándékosan hiány vagy üres érték.
* undefined - Változó, ami még nem kapott értéket.
* bigint - nagy szám
* symbol - Egyedi és megváltoztathatatlan azonosítók.

## ❖ A number típus

Egész és valós számokat tárolhatunk vele.

Készítsünk egy number.ts nevű fájlt, majd fordítsuk le. Nézzük meg
a keletkezett number.js fájlt.

```typescript
age: number = 35
salary: number = 395.3
```

A TypeScriptben - mint a JavaScriptben is - nincs külön egész és valós
számmok tárolására típus.

## ❖ A string típus

A string literálisok megadhatók idézőjelek, aposztrófok és backtick karakterek között.

```typescript
name: string = "Erős István"
city: string = 'Szeged'
positon: string = `fejlesztő`
```

## ❖ A boolean típus

A boolean típus két értéket vehet fel: true vagy false.

```typescript
haveCar: boolean = true
visibleText: boolean = false
```

## ❖ A null típus

Szándékosan hiányzó érték vagy egy objektum-hivatkozás hiányát jelöli.

A következő kódot írjuk egy .ts fájlba, majd fordítsuk JavaScript-re.

```typescript
//Alapértelmezetten null érték:
let felhasznaloNev: string | null = null

//Később kaphat értéket:
felhasznaloNev = "Anna"

//Visszaállítjuk null-ra mert kijelentkezett
felhasznaloNev = null
```

Nézzük meg az elkészült JavaSCript kódot.

## ❖ Az undefined típus

A változó már létrejött, de még nem defináltuk az értéket.

_undef.ts_:

```typescript
let cim: string | undefined //még nincs értéke
let toroltAdat: string | null = null //Szándéosan kiűrítve/nincs adat
```

Nézzük meg, milyen JavaScript kódra fordul.

## A bigint típus

Nagy számoknál használjuk. Példa:

```typescript
 let num: bigint = 9007199254740991n
```

A szám végén vegyük észre az "n" karaktert, amely kötelező
bigint típus esetén.

## A symbol típus

A symbol a TypeScriptben (és a JavaScriptben) egy egyedi és megváltoztathatatlan
(immutábilis) primitív érték, amelyet leggyakrabban objektumok
tulajdonságkulcsaként (property key) használnak.

```typescript
valami: symbol = Symbol.for('valami')
```
