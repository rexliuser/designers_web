# Dialog — About

> Frame: `About Dialog` · Width: **600px** · Layout: **vertical (column)** · Clip: true  
> Background: `$bg-white` (#FFFFFF)  
> Border: `1px solid $border-gray` (#E8E8E8), outside  
> Shadow: outer, blur `32px`, offset `(0, 8)`, color `#0D0D0D20`

---

## 1. Dialog Header

| Property        | Value                                      |
| --------------- | ------------------------------------------ |
| Layout          | **flex row** (horizontal)                  |
| Justify content | `space-between`                            |
| Align items     | `center`                                   |
| Padding         | `16px 24px`                                |
| Width           | `100%` (fill container)                    |
| Border bottom   | `1px solid $border-gray` (#E8E8E8), inside |

### Title

| Property    | Value                          |
| ----------- | ------------------------------ |
| Content     | `About`                        |
| Font family | `Space Grotesk`                |
| Font size   | `20px`                         |
| Font weight | `600` (semi-bold)              |
| Color       | `$text-primary` (#0D0D0D)     |

### Close Icon

| Property | Value                       |
| -------- | --------------------------- |
| Icon     | `x` (Lucide)                |
| Size     | `20 × 20 px`               |
| Color    | `$text-muted` (#B0B0B0)    |

---

## 2. Dialog Body

| Property | Value                     |
| -------- | ------------------------- |
| Layout   | **flex column** (vertical)|
| Gap      | `16px`                    |
| Padding  | `24px`                    |
| Width    | `100%` (fill container)   |

### Paragraph 1 (lead)

| Property    | Value                          |
| ----------- | ------------------------------ |
| Font family | `Inter`                        |
| Font size   | `14px`                         |
| Font weight | `normal` (400)                 |
| Line height | `1.6`                          |
| Color       | `$text-primary` (#0D0D0D)     |
| Width       | `100%` (fill container, fixed-width growth) |

### Paragraph 2 / 3 / 4

| Property    | Value                          |
| ----------- | ------------------------------ |
| Font family | `Inter`                        |
| Font size   | `14px`                         |
| Font weight | `normal` (400)                 |
| Line height | `1.6`                          |
| Color       | `$text-secondary` (#7A7A7A)   |
| Width       | `100%` (fill container, fixed-width growth) |
