\newpage

# Gyakorlat

## Feladat

Készítsünk egy weblapot, ami bekérik egy háromszög alapját és magasságát,
majd kiszámítja a területet.

## Projekt készítése

* Hozzuk létre egy **triangle nevű könyvtárat.
* Lépjünk be a **triangle** könyvtárba.
* Indítsunk egy rendelkezésreálló kódszerkesztőt.

```bash
mkdir triangle
cd triangle
code .
```

Két könyvtárat fogunk használni. A public könyvtárba tesszük a
HTML fájlt. Ide kerül majd fordítás után a main.js állomány is.

A kódot az src/main.ts fájlba írjuk.

```txt
triangle/
  |-public/
  |   `-index.html
  |-src/
  |   `-main.ts
  `-.tsconfig.json
```

## HTML állomány

_index.html_:

```html
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Háromszög</title>
</head>
<body>
    <h1>Háromszög</h1>

    <form>
        <div>
            <label for="base">Alap</label>
            <input type="text" id="base" name="base">
        </div>
        <div>
            <label for="height">Magasság</label>
            <input type="text" id="height" name="height">
        </div>
        <button>Számít</button>

        <div>
            <label for="area">Terület:</label>
            <input type="text" id="area" name="area" readonly>
        </div>
    </form>

    <script src="main.js"></script>
    
</body>
</html>
```

## TypeScript állomány

_main.ts_:

```typescript

const form = document.querySelector<HTMLFormElement>('form')

form?.addEventListener('submit', (e) => {
    e.preventDefault()
    console.log('Megy...')

    const data = new FormData(form)
    const base = Number(data.get('base'))
    const height = Number(data.get('height'))
    
    const area = base * height / 2
    console.log(area)
    
    const areaInput = form.elements.namedItem('area') as HTMLInputElement
    if (areaInput) {
        areaInput.value = area.toString()
    }
})

```

## TypeScript beállítófájl

_tsconfig.json_:

```json
{
    "compilerOptions": {        
        "outDir": "./public",
        "rootDir": "./src"
    }
}

```

## Fordítás

```bash
tsc --watch
```
