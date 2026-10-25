\newpage

# Haladó típusok

## Témák

* [Témák](#témák)
* [A haladó típusok](#a-haladó-típusok)
* [❖ Az Union típus](#-az-union-típus)
* [Az Intersection típus](#az-intersection-típus)
* [A literal típus](#a-literal-típus)
* [Típusálnév](#típusálnév)
* [❖ Az interface](#-az-interface)

## A haladó típusok

Haladó típusok:

* Union - let id: string | number
* Intersection típusok
* Literal típus
* Típus alias
* interface - Objektumok szerkezetének meghatározására.

## ❖ Az Union típus

Az Union típus esetén, több megadott típus is van. Az érték bármelyik típus lehet.

```typescript
type Azonosito = string | number;

let id: Azonosito = "abc123"
id = 42

//Az id = true már hibát ad
```

## Az Intersection típus

Az & karater segítségével két típust megadok. 

```typescript
type Szemely = { nev: string }
type Alkalmazott = { dolgozoAzonosito: number }

type Dolgozo = Szemely & Alkalmazott

const anna: Dolgozo = {
    nev: "Anna",
    dolgozoAzonosito: 42,
}
```

A Dolgozo típusú anna objektumnak mindkét tulajdonságot tartalmaznia kell.

Primitív típus így nem adható meg, mivel egyszerre nem lehet valami,
például string és number.

## A literal típus

Az alaptípusnál szűkebb típus, amely csak egy adott értéket enged meg.

```typescript
type Allapot = "betöltés" | "siker" | "hiba"

let allapot: Allapot = "betöltés"
allapot = "siker"
//Hibás: allapot = "kész"
```

## Típusálnév

Típusalias vagy típusálnév egy meglévő típusnak adunk egy másik nevet.

```typescript
type szoveg = string
let id: szoveg = "abc"
id = 42
```

A típus lehet Union típus is:

```typescript
type Azonosito = string | number
let id: Azonosito = "abc"
id = 42
```

## ❖ Az interface

Az interface segítségével leírhatjuk egy objektum milyen tulajdonságokat
és metódusokat tartalmazhat.

```typescript
interface Dolgozok {
    name: string
    city: string
    salary: number
}

let mari: Dolgozok = {
    name: "Erős István",
    city: "Szeged",
    salary: 395
}

console.log(mari.name)
```

Használata osztályban:

```typescript
interface Dolgozok {
    name: string
    city: string
    salary: number
}

class Valami {
    mari: Dolgozok = {
        name: "Erős István",
        city: "Szeged",
        salary: 395
    }
    print() {
        console.log(this.mari.name)
    }
}
let valami = new Valami()
valami.print()
```
