# Pico animation spec

Drop files in `assets/pico/`. The app swaps them in automatically by name; until a file exists, a temporary vector Pico is shown.

## Format
- Transparent background (animated WebP or APNG). GIF only has 1-bit transparency, so edges look jagged on the app's colored backgrounds.
- Square, 512x512, character centered, feet on the same baseline in every file.
- Seamless loop, 2-4 seconds, same scale and colors as the approved Pico.

## Files
| File | Moment |
|---|---|
| sunny.gif | Sunny weather (done, original GIF) |
| rainy.gif | Rain (done, original GIF) |
| night.webp | Evening or night (sleepy) |
| cloudy.webp, cold.webp, hot.webp | Other weather |
| hello.webp | Welcome / app open |
| saved.webp | Outfit saved (celebrate) |
| worn.webp | Marked as worn |
| laundry.webp | Marked for laundry |
| nothing-planned.webp | No outfit planned (gasp / nudge) |
| planned.webp | Outfit planned (confident) |
| empty-wardrobe.webp | Empty wardrobe state |
