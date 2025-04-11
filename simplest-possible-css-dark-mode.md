[[development]]

---
title: Simplest possible CSS dark mode
---

The following three lines are all that is required to enable responsive default dark mode support.[^1]

[^1]: <https://dev.to/madsstoumann/dark-mode-in-3-lines-of-css-and-other-adventures-1ljj>

```css
body {
  color-scheme: light dark; /* tells the browse that the page supports both light and dark modes */
  color: CanvasText; /* sets the default text color to the browser's responsive default */
  background-color: Canvas; /* sets the default background color to the browser's responsive default */
}
```
