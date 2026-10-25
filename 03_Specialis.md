\newpage

# Speciális típusok

## Témák

* [Témák](#témák)
* [A speciális típusok](#a-speciális-típusok)
* [❖ Az any típus](#-az-any-típus)
* [A void típus](#a-void-típus)
* [Az object típus](#az-object-típus)

## A speciális típusok

Speciális típusok:

* any - Bármilyen típus.
* void - Egy függvény nem ad vissza értéket.
* object: Bármilyen nem-alaptípus (tömbök, függvények, objketumok)

## ❖ Az any típus

Az any típus kikapcsolja a típusellenőrzést, így bármilyen típus lehet.

```typescript
let ertek: any = "Ernő"
ertek = 3
```

Az ertek nevű változóba kezdetnek sztringet tettük, majd egy számértéket.

## A void típus

A void típust olyan függvényeknél használjuk, aminek nincs visszatérési értéke.

```typescript
function printUsername(username: string): void {
    console.log(username)
}
```

## Az object típus

```typescript
let ertek: object 
ertek = { id: 1, name: 'Ernő'}
```

```typescript
let eretek: object
ertek = [35, 45, 27]
```

Az eretek változóba eltehető függvény is, de úgy nem hívható meg. A következő 
forma használható:

```typescript
let mehet: () => void = function() {
    console.log("megy...")
}
mehet()
```
