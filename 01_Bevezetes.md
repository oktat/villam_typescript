\newpage

# Bevezetés

## Témák

* [Témák](#témák)
* [Követelmények](#követelmények)
* [A TypeScript nyelv](#a-typescript-nyelv)
* [❖ Fordító](#-fordító)
* [❖ Projekt készítése](#-projekt-készítése)
* [❖ Első TypeScript program](#-első-typescript-program)

## Követelmények

* Fájl- és könyvtárkezelési ismeret
* JavaScript ismeret
* Minimális Node.js ismeret

## A TypeScript nyelv

A TypeScript a JavaScript kiegészítésének tekinthető, ami típusokkal lett kiegészítve.

A JavaScript futtathatjuk böngészőben vagy Node.js programként.

A böngészők és Node.js nem ismerik TypeScriptet, ezért az így megírt kódot
JavaScript nyelvre kell fordítani.

## ❖ Fordító

A TypeScript fordítót le kell tölteni, például az npm paranccsal. Telepítsük globálisan:

```bash
npm install --global typescript
```

Ellenőrzés:

```bash
tsc --version
```

## ❖ Projekt készítése

Készítsünk egy projektet, legyen a neve _elso_.

Lépések:

* Létrehozunk egy elso nevű mappát.
* Belépünk a könyvtárba.

```bash
mkdir elso
cd elso
```

A példában parancssorból hozom létre a mappát, de az létrehozható
valamilyen GUI felületű fájlkezelővel is, mint a Total Commander.

## ❖ Első TypeScript program

Hozzuk léte egy main.ts nevű fájt.

_main.ts_:

```typescript
let nev: string = "Erős István"
console.log(nev)
```

Fordítsuk le:

```bash
tsc main.ts
```

Létre jön egy main.js fájl. Nézzük meg a tartalmát. Az eredmény: A típus
el lett hagyva a forráskódból.

Ha VSCode-ban vagy VSCodiumban megnyitjuk a main.js fájlt, majd vissza
navigálunk a maint.ts fájlba, a nev változóra figyelmeztetést kapunk
szerkesztőtől, mivel egy másik fájlban is deklarálva van a változó.

Töröljük a fájlt:

Windowson:

```cmd
del main.js
```

Linuxon:

```bash
rm main.js
```

Most mondjuk meg neki, hogy milyen könyvtárban jöjjön létre a
lefordított fájl. Legyen ez a dist.

```bash
tsc main.ts --outDir dist
```

A main.js fájl most a dist könyvtárban jön létre.

Hogy ne kelljen mindig megadni ezt az opciót, készítsünk egy
beállítófájlt **tsconfig.json** néven:

_tsconfig.json_:

```json
{
    "compilerOptions": {
        "outDir": "./dist"
    }
}
```

A **tsc** parancs automatikusan megkeresi a .ts kiterjesztésű fájlokat.
Próbáljuk meg így fordítani:

```bash
tsc
```

A forrásfájlokat egy src nevű mappába szokás tenni. Készítsünk el
a projektünk gyökérkönyvtárában egy src nevű mappát, majd
mozgassuk ide át a main.ts fájlt.

A tsconfig.json fájlban mondjuk meg, hogy itt kell keresni a TypeScript fájlokat:

_tsconfig.json_:

```json
{
    "compilerOptions": {
        "outDir": "./dist",
        "rootDir": "./src"
    }
}
```

Változtassuk valamit forráskódon, például a beírt neven, majd futtassuk újra a fordítást:

```bash
tsc
```

Egy minimális beállítófájl kicsit több beállítással:

_tsconfig.json_:

```json
{
  "compilerOptions": {
    "target": "es2022",
    "module": "commonjs",
    "rootDir": "./src",
    "outDir": "./dist",
    "strict": true
  }
}
```
