# Stella

Personal wardrobe and outfit planner. Mobile-first web app prototype (single-file HTML, no build step).

- **Home**: weather header, Pico (the mascot), daily / weekly / monthly planner, swipe between days.
- **Pico**: drawn in SVG, mood follows the day's tag and the weather.
- **Day tags**: office, working from home, day off, interview, first day, special occasion (stored in localStorage).
- **Google Calendar sync**: demo only. See `docs/PICO_CALENDAR_NOTE.md` for what a real integration needs.

## Run
Open `index.html` in a browser, or serve the folder with any static server. On a phone: open the hosted URL, Share, Add to Home Screen.

## Status
| Feature | State |
|---|---|
| Home, planner views, Pico, day tags | Working (prototype data) |
| Weather | Demo data (planned: Open-Meteo) |
| Google Calendar | Demo, needs backend (OAuth) |
| Wardrobe, Create, Looks, Me | Not built yet |
