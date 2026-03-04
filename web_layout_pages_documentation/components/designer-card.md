# Component — DesignerCard

> Reusable component · Frame: `Component/DesignerCard`  
> Width: **248px** (fixed; `fill_container` when placed in grid rows)  
> Layout: **vertical (column)**  
> Background: `$bg-white` (#FFFFFF)  
> Border: `1px solid $border-gray` (#E8E8E8), inside

---

## Structure Overview

```
DesignerCard (vertical)
├── Thumbnail
└── CardContent (vertical, gap 6, padding 16)
    ├── DesignerName
    ├── MetaRow (row, gap 8)
    │   ├── Year
    │   └── Headquarter
    ├── Biography
    └── ViewProfileLink (row, gap 6)
        ├── LinkText
        └── LinkArrow (icon)
```

---

## 1. Thumbnail

| Property        | Value                          |
| --------------- | ------------------------------ |
| Height          | `160px`                        |
| Width           | `100%` (fill container)        |
| Background      | `$bg-surface` (#FAFAFA)        |
| Align items     | `center`                       |
| Justify content | `center`                       |
| Placeholder     | Lucide `image` icon, `32px`, color `#D0D0D0` |

---

## 2. Card Content

| Property | Value                     |
| -------- | ------------------------- |
| Layout   | **flex column** (vertical)|
| Gap      | `6px`                     |
| Padding  | `16px`                    |
| Width    | `100%` (fill container)   |

### 2.1 Designer Name

| Property    | Value                          |
| ----------- | ------------------------------ |
| Font family | `Space Grotesk`                |
| Font size   | `15px`                         |
| Font weight | `600` (semi-bold)              |
| Color       | `$text-primary` (#0D0D0D)     |

### 2.2 Meta Row

| Property | Value                      |
| -------- | -------------------------- |
| Layout   | **flex row** (horizontal)  |
| Gap      | `8px`                      |
| Width    | `100%` (fill container)    |

#### Year / Headquarter Text

| Property    | Value                          |
| ----------- | ------------------------------ |
| Font family | `Inter`                        |
| Font size   | `12px`                         |
| Font weight | `normal` (400)                 |
| Color       | `$text-secondary` (#7A7A7A)   |

### 2.3 Biography

| Property    | Value                          |
| ----------- | ------------------------------ |
| Font family | `Inter`                        |
| Font size   | `12px`                         |
| Font weight | `normal` (400)                 |
| Line height | `1.4`                          |
| Color       | `$text-secondary` (#7A7A7A)   |
| Width       | `100%` (fill container, fixed-width growth) |

### 2.4 View Profile Link

| Property    | Value                    |
| ----------- | ------------------------ |
| Layout      | **flex row**             |
| Align items | `center`                 |
| Gap         | `6px`                    |

#### Link Text

| Property    | Value                          |
| ----------- | ------------------------------ |
| Content     | `View Profile`                 |
| Font family | `Space Grotesk`                |
| Font size   | `12px`                         |
| Font weight | `500` (medium)                 |
| Color       | `$accent-red` (#E42313)       |

#### Link Arrow Icon

| Property | Value                       |
| -------- | --------------------------- |
| Icon     | `arrow-right` (Lucide)      |
| Size     | `14 × 14 px`               |
| Color    | `$accent-red` (#E42313)    |
