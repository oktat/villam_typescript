\newpage

# Komplex típusok

## Témák

* [Témák](#témák)
* [❖ Tömbtípus](#-tömbtípus)
* [A tuple](#a-tuple)
* [Az enum típus](#az-enum-típus)

## ❖ Tömbtípus

Számokat tartalmazó tömb létrehozása típusjelöléssel:

```typescript
let nums: number[] = []

nums.push(45)
nums.push(72)
nums.push(17)

console.log(nums)
```

```typescript
let nums: Array<number> = []

nums.push(45)
nums.push(72)
nums.push(17)

console.log(nums)
```

Szöveget tartalmazó tömb készítse:

```typescript
let szavak = string[] = []
```

## A tuple

A tuple (tüple) egy fix hosszúságú tömb, amelynek elemei előre meghatározott
típusúak és sorrendűek.

```typescript
let user: [number, string] = [1, "Anna"]
```

## Az enum típus

A TypeScriptben az Enum (enumeráció/felsorolás)
nehezen megjegyezhető értékek helyett használt
konstansok.

```typescript
enum Direction { Up, Down, Left, Right }
let irany: Direction = Direction.Up

function checkDirection(direction: Direction) {
    if(direction === Direction.Up) {
        console.log('Irány fel')
    } else {
        console.log('Egyéb irány)
    }
}
```
