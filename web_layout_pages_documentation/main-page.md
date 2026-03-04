# Main Page — Designers Listing

> Frame: `Main Page - Designers Listing` · Width: **1440px** · Layout: **vertical (column)** · Clip: true  
> Background: `$bg-white` (#FFFFFF)

---

## Design Tokens (Variables)

| Token              | Value     |
| ------------------ | --------- |
| `$bg-white`        | `#FFFFFF` |
| `$bg-surface`      | `#FAFAFA` |
| `$border-gray`     | `#E8E8E8` |
| `$accent-red`      | `#E42313` |
| `$text-primary`    | `#0D0D0D` |
| `$text-secondary`  | `#7A7A7A` |
| `$text-muted`      | `#B0B0B0` |

---

## 1. Header

| Property        | Value                                      |
| --------------- | ------------------------------------------ |
| Layout          | **flex row** (horizontal)                  |
| Justify content | `flex-end`                                 |
| Align items     | `center`                                   |
| Padding         | `12px 48px`                                |
| Background      | `$bg-white` (#FFFFFF)                      |
| Width           | `100%` (fill container)                    |
| Border bottom   | `1px solid $border-gray` (#E8E8E8), inside |

### Nav Links (child of Header)

| Property    | Value          |
| ----------- | -------------- |
| Layout      | **flex row**   |
| Align items | `center`       |
| Gap         | `32px`         |

#### Nav Link Item — "About" / "Contact"

| Property    | Value                         |
| ----------- | ----------------------------- |
| Font family | `Inter`                       |
| Font size   | `14px`                        |
| Font weight | `500` (medium)                |
| Color       | `$text-primary` (#0D0D0D)    |

---

## 2. Hero Section

| Property    | Value                     |
| ----------- | ------------------------- |
| Layout      | **flex column** (vertical)|
| Align items | `center`                  |
| Gap         | `16px`                    |
| Padding     | `32px 48px 24px 48px`     |
| Background  | `$bg-white` (#FFFFFF)     |
| Width       | `100%` (fill container)   |

### Logo

A flex row of two square blocks, each `100 × 100 px`.

#### Logo Left

| Property        | Value                         |
| --------------- | ----------------------------- |
| Layout          | **flex column** (vertical)    |
| Align items     | `center`                      |
| Justify content | `center`                      |
| Size            | `100 × 100 px`               |
| Padding         | `10px`                        |
| Background      | `#E84210`                     |

**Logo Left Text**

| Property    | Value                  |
| ----------- | ---------------------- |
| Content     | `FASHION\nASIA\nHONG KONG` |
| Font family | `Space Grotesk`        |
| Font size   | `13px`                 |
| Font weight | `700` (bold)           |
| Line height | `1.3`                  |
| Color       | `#FFFFFF`              |
| Text align  | `center`               |

#### Logo Right

| Property        | Value                                    |
| --------------- | ---------------------------------------- |
| Layout          | **flex column** (vertical)               |
| Align items     | `center`                                 |
| Justify content | `center`                                 |
| Size            | `100 × 100 px`                          |
| Padding         | `8px`                                    |
| Gap             | `2px`                                    |
| Background      | `#FFFFFF`                                |
| Border          | `2px solid #E84210`, inside              |

**Logo Right Top — "10"**

| Property    | Value               |
| ----------- | ------------------- |
| Font family | `Space Grotesk`     |
| Font size   | `28px`              |
| Font weight | `800` (extra-bold)  |
| Color       | `#E84210`           |
| Text align  | `center`            |

**Logo Right Bottom — "ASIAN DESIGNERS TO WATCH"**

| Property    | Value               |
| ----------- | ------------------- |
| Font family | `Space Grotesk`     |
| Font size   | `10px`              |
| Font weight | `700` (bold)        |
| Line height | `1.3`               |
| Color       | `#E84210`           |
| Text align  | `center`            |

### Hero Title

| Property       | Value              |
| -------------- | ------------------ |
| Content        | `10 ASIAN DESIGNERS TO WATCH` |
| Font family    | `Space Grotesk`    |
| Font size      | `32px`             |
| Font weight    | `800` (extra-bold) |
| Letter spacing | `2px`              |
| Color          | `#E84210`          |
| Text align     | `center`           |

### Hero Subtitle

| Property       | Value              |
| -------------- | ------------------ |
| Content        | `2025 POTENTIAL TALENTS` |
| Font family    | `Space Grotesk`    |
| Font size      | `18px`             |
| Font weight    | `800` (extra-bold) |
| Letter spacing | `4px`              |
| Line height    | `1.5`              |
| Color          | `#E84210`          |
| Text align     | `center`           |

---

## 3. Filter Bar

| Property        | Value                                      |
| --------------- | ------------------------------------------ |
| Layout          | **flex row** (horizontal)                  |
| Align items     | `center`                                   |
| Padding         | `0 48px`                                   |
| Background      | `$bg-white` (#FFFFFF)                      |
| Width           | `100%` (fill container)                    |
| Border bottom   | `1px solid $border-gray` (#E8E8E8), inside |

### Tab Item (repeated for each region)

| Property    | Value                             |
| ----------- | --------------------------------- |
| Layout      | **flex column** (vertical)        |
| Align items | `center`                          |
| Gap         | `4px`                             |
| Padding     | `12px 20px`                       |

Tabs: `ALL`, `MAINLAND CHINA`, `HONG KONG`, `JAPAN`, `KOREA`, `GEORGIA`, `PHILIPPINES`, `SINGAPORE`, `THAILAND`, `VIETNAM`

#### Tab Text (default / inactive)

| Property       | Value                          |
| -------------- | ------------------------------ |
| Font family    | `Inter`                        |
| Font size      | `12px`                         |
| Font weight    | `normal` (400)                 |
| Letter spacing | `1px`                          |
| Color          | `$text-secondary` (#7A7A7A)   |

#### Tab Text (active — e.g. "ALL")

| Property       | Value                          |
| -------------- | ------------------------------ |
| Font family    | `Inter`                        |
| Font size      | `12px`                         |
| Font weight    | `500` (medium)                 |
| Letter spacing | `1px`                          |
| Color          | `$accent-red` (#E42313)       |

#### Active Indicator Line

| Property   | Value                       |
| ---------- | --------------------------- |
| Height     | `3px`                       |
| Width      | `100%` (fill container)     |
| Background | `$accent-red` (#E42313)    |

---

## 4. Designer Card Grid

| Property | Value                     |
| -------- | ------------------------- |
| Layout   | **flex column** (vertical)|
| Gap      | `20px`                    |
| Padding  | `24px 48px`               |
| Width    | `100%` (fill container)   |

### Row (Row 1, Row 2)

| Property | Value                      |
| -------- | -------------------------- |
| Layout   | **flex row** (horizontal)  |
| Gap      | `20px`                     |
| Width    | `100%` (fill container)    |

Each row contains **5 DesignerCard** component instances, each `width: fill_container` (equal flex).

> See [components/designer-card.md](components/designer-card.md) for the DesignerCard component spec.

---

## 5. Footer

| Property        | Value                                    |
| --------------- | ---------------------------------------- |
| Layout          | **flex row** (horizontal)                |
| Justify content | `space-between`                          |
| Align items     | `center`                                 |
| Padding         | `24px 48px`                              |
| Background      | `$bg-surface` (#FAFAFA)                  |
| Width           | `100%` (fill container)                  |
| Border top      | `1px solid $border-gray` (#E8E8E8), inside |

### Footer Left Text

| Property    | Value                          |
| ----------- | ------------------------------ |
| Content     | `© 2026 Fashion Asia Hong Kong. All rights reserved.` |
| Font family | `Inter`                        |
| Font size   | `12px`                         |
| Font weight | `normal` (400)                 |
| Color       | `$text-muted` (#B0B0B0)       |

### Footer Right Text

| Property    | Value                          |
| ----------- | ------------------------------ |
| Content     | `Organised by Hong Kong Design Centre` |
| Font family | `Inter`                        |
| Font size   | `12px`                         |
| Font weight | `normal` (400)                 |
| Color       | `$text-secondary` (#7A7A7A)   |
