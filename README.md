# SudokuH (web)

Pure web version of the Sudoku app (HTML + CSS + JavaScript, built with Vite).

## Run

```
npm install
npm run dev        # http://localhost:5173
npm run build      # outputs dist/
npm run preview    # test the production build
```

## Structure (maps from the Flutter `lib/` layout)

```
index.html              entry page (loads fonts + src/main.js)
public/fonts/           bundled font files (optional)
src/
  main.js               app start: registers screens, starts router
  constants/app.js      constants (app name, grid sizes, routes, storage keys)
  styles/               variables.css (theme), base.css, components.css, screens.css
  screens/              loading, home, learn, settings, game
  widgets/              bottomNav, sudokuBoard, numberPad
  logic/                solver.js (rules), generator.js (random puzzles)
  services/             router.js (hash routing), storage.js (localStorage)
```

## Notes
- Bottom nav shows only on Home, Learn and Settings (see `NAV_ROUTES` in `constants/app.js`).
- Default grid is 6x6 (2x3 boxes). 4x4 and 9x9 are also supported; change it in Settings.
- Every puzzle is randomly generated and checked to have exactly one solution.
- Deploy: upload the `dist/` folder to Netlify, Vercel, Cloudflare Pages or GitHub Pages.
=======
# sudoku-h-for-fun
>>>>>>> e37d4d7f2bc76f6e3a903bf2d0c2187db43525b5
