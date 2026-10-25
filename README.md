# Villám TypeScript

Ez egy TypeScript áttekintés röviden.

Használathoz az .md kiterjesztés fájlok olvasása célszerű, 01-től.
Készítük a make paranccsal egy PDF állományt is, ahol egyben látjuk
az egész leírást.

## PDF készítése

A PDF készítéshez szükség lesz a Makefile, rendszer make parancsára.

```bash
make
```

## A make parancs beszerzése

Például Windowson a winget segítségével:

```cmd
winget install ezwinports.make
```

vagy:

```cmd
winget install -i MSYS2.MSYS2
```

Utóbbi komplexebb lehetőségeket biztosít (bash, gcc stb.).

Ellenőrzés:

```cmd
make --version
```
