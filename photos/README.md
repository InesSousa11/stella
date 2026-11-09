# Outfit photos

Stella shows a photo of the outfit when one exists for the exact set of pieces in a look.

Add photos to this folder and list them in `index.json`, one entry per look:

```json
[
  {
    "id": "look-002",
    "items": ["i1", "i5", "i9", "i13"],
    "images": [
      { "show": ["i1", "i5", "i9", "i13"], "src": "photos/look-002-full.jpg" },
      { "show": ["i5", "i9", "i13"],       "src": "photos/look-002-no-coat.jpg" }
    ]
  }
]
```

- `items`: every piece in the look (wardrobe ids such as `i1`).
- `images`: one image per combination of visible layers. The full outfit lists every piece; a layer the person can take off is left out of `show`.
- The Today screen offers a layer toggle only when the image for that combination exists.
- Portrait images around 780 × 1040 px, JPEG quality ~80, keep the app fast.
