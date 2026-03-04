# Designer Page — Detail

> Frame: `Designer Page - Detail` · Width: **1440px** · Layout: **vertical (column)** · Clip: true  
> Background: `$bg-white` (#FFFFFF)

---

## 1. Header

| Property        | Value                                      |
| --------------- | ------------------------------------------ |
| Layout          | **flex row** (horizontal)                  |
| Justify content | `flex-end`                                 |
| Align items     | `center`                                   |
| Padding         | `16px 48px`                                |
| Background      | `$bg-white` (#FFFFFF)                      |
| Width           | `100%` (fill container)                    |
| Border bottom   | `1px solid $border-gray` (#E8E8E8), inside |

### Nav Links

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

## 2. Breadcrumb Bar

| Property    | Value                          |
| ----------- | ------------------------------ |
| Layout      | **flex row** (horizontal)      |
| Align items | `center`                       |
| Gap         | `8px`                          |
| Padding     | `14px 48px`                    |
| Background  | `$bg-surface` (#FAFAFA)        |
| Width       | `100%` (fill container)        |

### Back Icon

| Property   | Value                       |
| ---------- | --------------------------- |
| Icon       | `chevron-left` (Lucide)     |
| Size       | `16 × 16 px`               |
| Color      | `$accent-red` (#E42313)    |

### Back Text

| Property    | Value                       |
| ----------- | --------------------------- |
| Content     | `Back to Designers`         |
| Font family | `Inter`                     |
| Font size   | `14px`                      |
| Font weight | `500` (medium)              |
| Color       | `$accent-red` (#E42313)    |

---

## 3. Content Area

| Property | Value                     |
| -------- | ------------------------- |
| Layout   | **flex column** (vertical)|
| Gap      | `40px`                    |
| Padding  | `40px 48px`               |
| Width    | `100%` (fill container)   |

### 3.1 Designer Info Section

| Property | Value                      |
| -------- | -------------------------- |
| Layout   | **flex row** (horizontal)  |
| Gap      | `48px`                     |
| Width    | `100%` (fill container)    |

#### Designer Avatar

| Property        | Value                       |
| --------------- | --------------------------- |
| Size            | `320 × 320 px`             |
| Background      | `$bg-surface` (#FAFAFA)     |
| Align items     | `center`                    |
| Justify content | `center`                    |
| Placeholder     | Lucide `user` icon, `48px`, color `#D0D0D0` |

#### Info Column

| Property | Value                     |
| -------- | ------------------------- |
| Layout   | **flex column** (vertical)|
| Gap      | `20px`                    |
| Width    | `fill_container` (flex 1) |

##### Designer Name

| Property       | Value                       |
| -------------- | --------------------------- |
| Font family    | `Space Grotesk`             |
| Font size      | `40px`                      |
| Font weight    | `500` (medium)              |
| Letter spacing | `-1px`                      |
| Color          | `$text-primary` (#0D0D0D)  |

##### Meta Info

| Property | Value                        |
| -------- | ---------------------------- |
| Layout   | **flex row** (horizontal)    |
| Gap      | `32px`                       |
| Width    | `100%` (fill container)      |

**Year Block / HQ Block** — each is a vertical stack:

| Property | Value                        |
| -------- | ---------------------------- |
| Layout   | **flex column** (vertical)   |
| Gap      | `4px`                        |

**Meta Label** ("Established" / "Headquarter")

| Property    | Value                          |
| ----------- | ------------------------------ |
| Font family | `Inter`                        |
| Font size   | `12px`                         |
| Font weight | `500` (medium)                 |
| Color       | `$text-muted` (#B0B0B0)       |

**Meta Value** (e.g. "1972" / "New York, USA")

| Property    | Value                          |
| ----------- | ------------------------------ |
| Font family | `Space Grotesk`                |
| Font size   | `18px`                         |
| Font weight | `600` (semi-bold)              |
| Color       | `$text-primary` (#0D0D0D)     |

##### Biography Section

| Property | Value                        |
| -------- | ---------------------------- |
| Layout   | **flex column** (vertical)   |
| Gap      | `8px`                        |
| Width    | `100%` (fill container)      |

**Bio Label**

| Property    | Value                          |
| ----------- | ------------------------------ |
| Content     | `Biography`                    |
| Font family | `Space Grotesk`                |
| Font size   | `14px`                         |
| Font weight | `600` (semi-bold)              |
| Color       | `$text-muted` (#B0B0B0)       |

**Bio Text**

| Property    | Value                          |
| ----------- | ------------------------------ |
| Font family | `Inter`                        |
| Font size   | `14px`                         |
| Font weight | `normal` (400)                 |
| Line height | `1.5`                          |
| Color       | `$text-secondary` (#7A7A7A)   |
| Width       | `100%` (fill container, fixed-width growth) |

##### Video Section

| Property    | Value                    |
| ----------- | ------------------------ |
| Layout      | **flex row**             |
| Align items | `center`                 |
| Gap         | `12px`                   |

**Video Icon**

| Property | Value                       |
| -------- | --------------------------- |
| Icon     | `circle-play` (Lucide)      |
| Size     | `20 × 20 px`               |
| Color    | `$accent-red` (#E42313)    |

**Video Link Text**

| Property    | Value                          |
| ----------- | ------------------------------ |
| Content     | `Watch Studio Documentary`     |
| Font family | `Space Grotesk`                |
| Font size   | `14px`                         |
| Font weight | `500` (medium)                 |
| Color       | `$accent-red` (#E42313)       |

---

### 3.2 Divider

| Property   | Value                       |
| ---------- | --------------------------- |
| Type       | Horizontal line             |
| Height     | `1px`                       |
| Width      | `100%` (fill container)     |
| Color      | `$border-gray` (#E8E8E8)   |

---

### 3.3 Image Gallery Section

| Property | Value                     |
| -------- | ------------------------- |
| Layout   | **flex column** (vertical)|
| Gap      | `24px`                    |
| Width    | `100%` (fill container)   |

#### Gallery Title

| Property    | Value                          |
| ----------- | ------------------------------ |
| Content     | `Portfolio & Work`             |
| Font family | `Space Grotesk`                |
| Font size   | `24px`                         |
| Font weight | `600` (semi-bold)              |
| Color       | `$text-primary` (#0D0D0D)     |

#### Gallery Grid

| Property | Value                     |
| -------- | ------------------------- |
| Layout   | **flex column** (vertical)|
| Gap      | `20px`                    |
| Width    | `100%` (fill container)   |

##### Gallery Row

| Property | Value                      |
| -------- | -------------------------- |
| Layout   | **flex row** (horizontal)  |
| Gap      | `20px`                     |
| Width    | `100%` (fill container)    |

**Image Placeholder** (repeated × 2 per row)

| Property        | Value                       |
| --------------- | --------------------------- |
| Height          | `440px`                     |
| Width           | `fill_container` (equal flex)|
| Background      | `$bg-surface` (#FAFAFA)     |
| Align items     | `center`                    |
| Justify content | `center`                    |
| Placeholder     | Lucide `image` icon, `32px`, color `#D0D0D0` |

---

## 4. Footer

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
