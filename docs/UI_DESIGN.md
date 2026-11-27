# UI/UX Design Brief — China Goods Store (Flutter)

> Prompt for Claude Code. Put this file in the repo as `docs/UI_DESIGN.md` and reference it from `CLAUDE.md`.
> The functional spec (ТЗ: мобильное приложение) is the source of truth for **what** each screen does. This file defines **how it looks and feels**. If the two conflict, the spec wins on behaviour and this file wins on visuals.

---

## 1. Your role

You are a senior product designer and Flutter UI engineer. Build a mobile shopping app that feels **calm, fast, premium and effortless**: the kind of app people open daily just to scroll. Every screen must look finished: real spacing rhythm, real hierarchy, real states. Nothing should look like a default Material template.

Before writing any screen, build the design system (section 4) and the component kit (section 5). Screens are assembled **only** from those tokens and components.

## 2. Product context

- An online store selling goods from Chinese marketplaces (Taobao, 1688, Tmall) to customers in **Turkmenistan**. The store buys each item in China, consolidates it at its warehouse and delivers it by air, express or truck.
- Customers are ordinary people, often not tech-savvy, mostly on mid-range Android phones and sometimes on slow mobile internet.
- Languages: **Russian and Turkmen** (Turkmen Latin: ä ç ň ö ş ü ý ž). Turkmen words run ~20–40% longer than Russian.
- Currency: **TMT only** (manat). Format: `1 216 TMT`, no decimals.
- What makes this store different, and the UI must make it obvious and reassuring: the item is **bought to order**, so delivery takes weeks, weight is known only after the warehouse weighs it, and a parcel goes through many visible stages.

## 3. Design direction

**Mood:** bright, clean, warm, trustworthy. White space, big confident product photos, one strong orange accent. Friendly, never cluttered or "bazaar-like" despite the huge catalogue.

**References (principles only, never copy their visuals):**
- *PAMADOR* (food delivery app, Ashgabat; customers already know it): card style, promo blocks, simple checkout, a clear order-tracking screen.
- *Zolotoe Yabloko* (Золотое Яблоко): white background, lots of air, full-width promo banners, minimalist product tiles with large photos, visible discounts.
- *Shorts / Reels*: the vertical video feed on Home.

**Core UX principles:**
1. **One primary action per screen.** An orange filled button always means "buy / next". Never two orange buttons competing.
2. **3–4 taps from product to payment.** Checkout is a single scrollable screen.
3. **Show the money honestly.** Every total breaks down into items, China delivery, international delivery (estimate) and discount. Estimates are labelled «уточнится после взвешивания» with an info tooltip.
4. **Progress is always visible.** Orders and parcels show a status timeline with icons, dates and the current step highlighted.
5. **Thumb-first.** Primary actions sit in the bottom 1/3: sticky bottom bars, bottom sheets instead of new pages for small choices (SKU, sort, filters, region).
6. **Forgiving.** Undo on delete, confirm only destructive or money actions, never lose user input.
7. **Fast perception.** Skeletons shaped like the content, optimistic updates, image placeholders with the average colour or blur, no full-screen spinners.

## 4. Design system (implement first, in `lib/core/theme/`)

Implement as `ThemeData` plus a custom `ThemeExtension<AppColors>`, `AppTypography`, `AppSpacing`, `AppRadii`, `AppShadows`. **No hard-coded colours, sizes or text styles anywhere in features.** Light theme only (dark is out of scope), but keep tokens semantic so dark can be added later.

### 4.1 Colour

| Token | Hex | Use |
|---|---|---|
| `primary` | `#F7941D` | Buy / Add to cart / Next, active tab, prices |
| `primaryPressed` | `#F26522` | Pressed state, discount badges |
| `primarySoft` | `#FFF3E3` | Tinted backgrounds: selected chip, info banners, active step halo |
| `accent` | `#FDB913` | "Хит" badge, rating stars, bonuses |
| `ink` | `#222222` | Primary text |
| `inkSecondary` | `#6B6B6B` | Secondary text, captions |
| `inkTertiary` | `#A0A0A0` | Placeholders, disabled text, old price |
| `graphite` | `#1E1E1E` | Dark surfaces (video overlay panels, toasts) |
| `background` | `#FFFFFF` | Screens |
| `surface` | `#F5F5F5` | Grouped sections, input fills, tile image background |
| `divider` | `#EDEDED` | Hairlines |
| `success` | `#22A06B` | Delivered, paid, positive balance |
| `warning` | `#F5A524` | Awaiting payment, surcharge |
| `danger` | `#E5484D` | Errors, problem status, cancel |
| `info` | `#3B82F6` | In transit, informational |

Rules: white text on orange **only bold ≥ 15 sp** (WCAG AA). Body text on white must be `ink` or `inkSecondary`. Status colours always come with an icon and a label, never colour alone. Exact brand hex values may be updated from the logo source; keep them in one place.

### 4.2 Typography

Font: **Inter** (bundled in assets, not loaded from the network). Verify that every Turkmen glyph (ä ç ň ö ş ü ý ž) and full Cyrillic render correctly; if any are missing, switch to a font that covers both.

| Style | Size / line height | Weight | Use |
|---|---|---|---|
| `display` | 28 / 34 | 700 | Order success amount, big empty-state titles |
| `h1` | 22 / 28 | 700 | Screen titles |
| `h2` | 18 / 24 | 600 | Section headers |
| `h3` | 16 / 22 | 600 | Card titles, list item titles |
| `body` | 15 / 22 | 400 | Default text |
| `bodyStrong` | 15 / 22 | 600 | Emphasis |
| `caption` | 13 / 18 | 400 | Meta, secondary info |
| `micro` | 11 / 14 | 600 | Badges, tab labels |
| `price` | 17 / 22 | 700 | Price in tile; tabular figures |
| `priceLarge` | 26 / 32 | 800 | Price on product page |

Use `FontFeature.tabularFigures()` for all prices, timers and counters. Respect system text scale up to **1.3×** without overflow.

### 4.3 Spacing, radii, elevation

- Spacing scale (4-pt grid): `4, 8, 12, 16, 20, 24, 32, 40, 48`. Screen horizontal padding **16**. Gap between Home sections **24**. Inside cards **12**.
- Radii: `chip 999`, `button 14`, `card 16`, `sheet 24` (top corners), `image in tile 12`, `input 12`.
- Elevation: mostly flat. Separate with `surface` backgrounds and spacing, not shadows. One soft shadow token for floating elements only (sticky bottom bar, FAB, toast): `0 -2 12 rgba(0,0,0,0.06)`.
- Touch targets ≥ **48×48 dp**. Primary button height **52**, secondary **44**.

### 4.4 Iconography and imagery

- One icon set, rounded 2-px stroke (e.g. Lucide or Phosphor Regular), 24 px default, 20 px in dense rows. Bottom-nav icons have an outline (inactive) and filled (active) pair.
- Product photos: aspect ratio **1:1** in tiles, **1:1 or 4:5** in the gallery. Placeholder = `surface` + subtle shimmer; fade in over 200 ms.
- AI-generated replacement photos carry a small «иллюстрация» chip in the corner.
- Empty states use simple flat spot-illustrations in the orange palette (one consistent style). Never stock photos.

### 4.5 Motion

- Durations: `fast 150 ms`, `base 250 ms`, `slow 350 ms`. Curve: `Curves.easeOutCubic` (enter), `easeInCubic` (exit).
- Use motion to explain: add-to-cart = product thumbnail flies to the Cart tab plus a badge bump; status step = the active dot pulses gently; Hero transition from tile image to product gallery.
- Haptics: light impact on add-to-cart, like, favourite and successful payment.
- Respect `MediaQuery.disableAnimations`.

## 5. Component kit (`lib/core/widgets/`)

Build each with all variants and states (default, pressed, disabled, loading, error) and preview them on a dev-only "Kit" screen (or Widgetbook).

- **Buttons:** `PrimaryButton` (orange fill, white bold), `SecondaryButton` (orange outline), `TertiaryButton` (text), `IconCircleButton` (for video overlay). Loading state replaces the label with a small spinner and keeps the width.
- **StickyActionBar:** bottom bar with safe-area padding, optional left price/total block and 1–2 buttons ("В корзину" outline plus "Купить сейчас" filled).
- **Price:** `PriceTag` (current price + struck-through old price + `-25%` badge), sizes S/M/L.
- **ProductTile** (2-column grid): image 1:1 with favourite heart top-right and badges top-left (Хит / −X% / Новинка), title max 2 lines, price row, "продано 1,2 тыс." caption. Whole tile tappable with a ripple; heart has its own hit area.
- **ProductCarousel:** section header ("Хиты" + «Все →») plus horizontal list of compact tiles, peeking the next item.
- **SkuSelector:** colour swatches with thumbnails, size chips, unavailable options greyed and struck; plus a «Размерная сетка» link.
- **QuantityStepper:** − value +, min/max aware, long-press to repeat.
- **RoundCheckbox:** circular tick (optionally tristate) for selecting list rows such as cart lines and sellers; form consents keep the square checkbox.
- **Chips:** filter chip, selected chip (`primarySoft` + orange border), removable active-filter chip.
- **Inputs:** `AppTextField`, `PhoneField` (fixed `+993` prefix, mask `XX XXXXXX`), `OtpField` (4–6 boxes, auto-advance, paste support, SMS autofill), `SearchBar` (with camera icon for photo search).
- **StatusChip** and **StatusTimeline** (vertical: icon dot + title + date; done = success, current = orange halo + bold, upcoming = grey).
- **DeliveryOptionCard:** radio card with icon (plane / lightning / truck), name, term (e.g. "1–2 недели"), price; disabled with reason.
- **MoneyBreakdown:** rows (label ↔ amount), divider, bold total, optional info icons.
- **Banner** (full-width, radius 16, auto-play carousel with page dots), **CountdownTimer** (for «Скидки дня» and payment deadline).
- **BottomSheet** scaffold (drag handle, title, content, sticky action).
- **State widgets:** `SkeletonTile`, `SkeletonList`, `EmptyState` (illustration + title + text + action), `ErrorState` (message + «Повторить»), `OfflineBanner` (thin top bar, graphite), `AppToast` / SnackBar (graphite background, optional «Отменить»).
- **ProgressToMinimum:** bar with «Добавьте товаров ещё на 120 TMT».

## 6. Navigation shell

- Bottom navigation, 5 tabs with icon and label: **Главная, Каталог, Корзина, Избранное, Профиль**. Labels `micro` 11 sp, must fit in Turkmen (test «Halanlarym»-length words; allow 2-line wrap rather than truncation, or shorten via l10n).
- Cart tab shows a count badge; Profile shows an unread-notifications dot.
- The bar is white with a hairline top divider. On the video feed the bar turns dark translucent (graphite 85%) with white icons.
- Large screen titles on root tabs; standard app bar with back arrow inside stacks.

## 7. Screens (visual and UX spec)

For **every** screen deliver 4 states (loading skeleton, empty, error, offline) in RU and TK. Layout must survive 360 dp width and text scale 1.3.

### 7.1 Splash and onboarding
- Native splash: white with the logo centred.
- Onboarding: large language cards (RU / TK) → region list with radio rows → 3 swipeable slides (illustration + one-line title + short text: Order → We buy in China → Delivery to your city) with dots and «Пропустить» → push-permission explainer (illustration + «Включить уведомления» primary + «Позже» text button).

### 7.2 Home
Top: compact header (logo left; bell right; the language is switched only in Settings), then a sticky **search bar** with a camera icon.
Sections, in a vertical scroll with 24-dp gaps:
1. **Video stories strip:** horizontal round or rounded-rect thumbnails (like stories) that open the full-screen feed. This is the entry into the main video feature, so make it eye-catching.
2. **Promo banner carousel:** full-width, 16:9 or 2:1.
3. **«Вставьте ссылку»** card: a soft orange-tinted card with a link icon and a «Taobao, 1688, Tmall» hint. Tapping it opens the paste flow. If the clipboard holds a marketplace link, show a chip «Открыть товар по ссылке».
4. **«Скидки дня»** with countdown timer in the header plus a horizontal carousel.
5. Category shortcuts: grid of 8 round icons with labels and «Все категории».
6. «Хиты», «Новинки», «Рекомендуем», «Вы смотрели» carousels.
7. **«Как мы работаем»:** 4-step horizontal stepper with icons plus delivery terms for the 3 types.
8. Infinite "Для вас" product grid at the bottom.

### 7.3 Video feed (full-screen)
- Vertical PageView, edge to edge, status bar light. Auto-play muted; a speaker icon top-right toggles sound.
- Right rail (bottom aligned): like (with count), favourite, share, all `IconCircleButton` on a translucent dark circle.
- Bottom: a glassy product card (graphite at 70% + blur): thumbnail, 1-line title, `PriceTag` in white/orange, buttons «Подробнее» (outline white) and «В корзину» (orange). «В корзину» opens the SKU bottom sheet over the video.
- Thin progress bar at the very bottom. Before video loads: the poster frame with shimmer.

### 7.4 Catalog
- Two-pane layout: left narrow rail of root categories (selected = orange bar + bold), right grid of subcategories with icons (3 columns).
- Product list: sticky toolbar under the app bar (Sort ▾ · Filters with count badge · grid/list toggle), active filter chips row, 2-column `ProductTile` grid, infinite scroll with a bottom loader.
- Filters: full-height bottom sheet; groups as collapsible sections (price range slider + two inputs, source, rating, colour swatches, size chips, brand with search, delivery term, discount switch); sticky footer «Сбросить» + «Показать 1 248 товаров».

### 7.5 Product page (the most important screen; make it beautiful)
- Gallery top, edge to edge, 1:1, page indicator «3/12», video slides with play button; tap → full-screen zoom viewer. Floating back, share, favourite buttons on top over the image (white circles).
- Content sheet slides up over the gallery with a 24 radius top:
  1. `priceLarge` + old price + discount badge + timer chip if on promo; wholesale users see a tier table («от 10 шт — 180 TMT»).
  2. Title (h2, up to 3 lines, expandable), rating stars + reviews count + sold count.
  3. SKU selector (colour thumbnails, sizes), stock note.
  4. **Delivery block** (card): region chip («Ашхабад ▾») + 3 rows (icon, type, term, price). Without weight: «Доставка после взвешивания» with info icon.
  5. «Как это работает» mini explainer (bought to order, cancel only before purchase), collapsible.
  6. Description (rich HTML, collapsed to ~300 px with a fade + «Показать полностью»), specs table (zebra rows), seller card, reviews preview (photos strip, 2 reviews, «Все отзывы»), «Похожие» and «С этим покупают» carousels.
- Sticky bottom bar: «В корзину» (secondary) + «Купить сейчас» (primary). «Купить сейчас» is the quick order (§7.15) for the chosen variant; there is no separate «Быстрый заказ» link on this page.
- The add-to-cart animation and the cart badge bump confirm success; then a toast «Добавлено в корзину · Перейти».

### 7.6 Search and photo search
- Search: recent queries (chips with ×, «Очистить»), popular queries, live suggestions with the matched part bold. «Возможно, вы искали…» line on typos.
- Photo search: a camera screen with a large shutter button, gallery button and tips («Сфотографируйте товар крупно»); then a crop screen with a draggable frame; then results with a «Похожие товары» header, similarity order and filters. No results → illustration + «Найдите мне товар» primary.
- Link import loading: a friendly progress screen (animated illustration, steps «Открываем страницу → Переводим → Считаем цену», up to 60 s, «Отмена»).

### 7.7 Cart
- Screen background `surface`; content sits in white cards (radius 16, no border), 12 dp apart.
- Grouped by seller: each group a white card. Header: tristate `RoundCheckbox` (tap from «some» ticks all) + seller name (h3) + source pill, and «Доставка по Китаю: 24 TMT» caption below.
- Item rows (no dividers): `RoundCheckbox` · image 96 px (radius 12) · details column:
  - title (`bodyStrong`, max 2 lines) with a compact outlined **«×N»** badge on the right; tap → «Количество» bottom sheet with a `QuantityStepper` (each step applies at once; max = stock). No badge on unavailable lines.
  - SKU summary as one grey caption line with a `›` chevron (tap → change variant).
  - warnings, then the **unit** price in `price` style, `primary` colour (`inkTertiary` when unavailable).
  - swipe left (red, bin) to delete; swipe right (orange, heart) to move to favourites: the line leaves the cart and the product gets a heart. Both show a toast with «Отменить», which restores the line and drops the heart only if this swipe added it. Both are also screen-reader custom actions.
- Price-changed warning inline on the row (warning colour, old → new).
- Promo code field (collapsible row) and `ProgressToMinimum` (when below the minimum) share one white card at the end of the list.
- Sticky bottom: top row = `RoundCheckbox` «Выбрать все» (whole row tappable) left + «Быстрый заказ» text button right; main row = «Итого 1 216 TMT» (tap → expands `MoneyBreakdown` sheet) + «Оформить (N)» primary, where N is the number of ticked lines («Оформить» when none).
- Empty cart: friendly illustration + «В каталог».

### 7.8 Checkout (one screen)
Vertical sections as white cards on a `surface` background, each with a small numbered header:
1. Recipient (prefilled, tap to edit inline).
2. Receiving: segmented control **Курьер / Самовывоз**. Courier = address card with mini static map preview + «Изменить»; Pickup = selected point card + «Выбрать на карте».
3. Delivery type: three `DeliveryOptionCard`s.
4. Extra services: checkbox rows with prices; comment field.
5. Payment: radio cards (Карта / Наличные в офисе) + balance switch «Списать с баланса 200 TMT». Advance < 100% shows a highlighted info card «Сейчас 300 TMT, остаток 700 TMT до выдачи».
6. `MoneyBreakdown` + consent checkbox with links.
Sticky bottom: «Оплатить 1 216 TMT». Any field change animates the total (number roll).

### 7.9 Address map
Full-screen OSM map, a fixed centre pin that lifts while dragging, a "my location" button, and a bottom sheet with the resolved address, «Квартира / ориентир» field and «Сохранить адрес». Pickup points: same map with orange markers plus a list toggle.

### 7.10 Payment result
- WebView screen with a thin progress bar and a close (×) button.
- «Проверяем оплату…» calm loader.
- Success: big check animation (Lottie or custom), `display` amount, order number, next step text («Мы выкупим товар в течение 1–2 дней»), buttons «К заказу» / «На главную». Light haptic.
- Failure: soft danger illustration, reason, «Повторить оплату», with a note that the order is saved.

### 7.11 Profile
- Header card: avatar initials circle (orange soft), name, phone; three stat pills: **Баланс**, **Долг** (only if > 0, warning colour, tap = pay), **Бонусы**. Wholesale badge «Опт».
- **«Мои заказы» card** (signed-in, right under the header; a `surface` group like the menu): title + «Все» (→ Orders list), then 5 equal filter buttons — icon with a red `CountBadge` + caption label (wraps, never truncated): **Ждут оплаты** (order awaiting payment or parcel awaiting surcharge), **Выкупаем** (paid / purchased / to warehouse / in warehouse items), **В пути** (parcels in transit → with courier), **Ждут отзыва** (received items without a review), **Проблемы** (items in «Проблема»). Counters come from the server; before the answer the filters work without them.
- Under the filters, a white **tracking line**: photo 48 px, status (bold) + time (today) or date, one line of tracking text, outlined «Смотреть» pill; the whole row opens the parcel or order. With several updates it turns to the next one every 3 s (slide-up + fade; no motion when reduced; stays still for screen-reader users). Counters reload when the user comes back from any screen opened here.
- Grouped menu lists (rounded white groups on `surface`): Orders, Parcels, Surcharges and refunds, Balance, Addresses / Favourites, Viewed, My reviews, Price alerts / Notifications, Support, Wholesale / Info, Settings.
- Guest: an illustrated sign-in card on top «Войдите, чтобы видеть заказы» + primary «Войти».
- Bottom (everyone): endless **«Вам может понравиться»** 2-column product grid, the same recommendations feed as «Для вас» on Home.

### 7.12 Orders and parcels (make tracking delightful)
- Orders list: segmented tabs (Активные / Завершённые / Отменённые); order card = number + date, overlapping product thumbnails (max 4 + «+3»), status chip, total, «Повторить» action.
- **Orders by filter** (from the profile filters): `surface` screen, horizontal row of filter chips (the 5 profile filters), then white cards. Card = «Заказ №…» / «Посылка …» + date, status title on the right in `primaryPressed`; only the items matching the filter, each: image 72 px, title (2 lines) + price on the right, variant (grey, 1 line) + «×N»; grey tracking row (truck icon, bold status, grey text) when the server sends one; «К оплате …» in `price` style when something is due; buttons right-aligned, medium size, primary filled and others outlined: «Оплатить» (card payment), «Доплатить» / «Отследить» (open the parcel), «Оставить отзыв» (one card per item), «Решить» / «Подробнее» (open the order). The card itself opens the order or parcel; coming back reloads the filter. Offline device copy: «Данные на …» notice and buttons only open the card. Empty filter: «Здесь пока пусто».
- Order details: status header card (colour-tinted by status, icon, big status title, short explanation); items with per-item status chips, warehouse photos as a thumbnail strip; «Проблема» items get a highlighted action card with decision buttons and a timer; payments and `MoneyBreakdown`; cancel as a quiet danger text button at the bottom (hidden after purchase, replaced by a gentle explanation).
- Parcel details: **hero tracking card**: horizontal mini progress (8 icons: forming → paid → in transit → customs → arrived → ready / courier → delivered) with the current step highlighted, ETA in big text («Ожидается 24–28 ноября»); below it the vertical `StatusTimeline` with dates. «Ожидает доплаты» shows a calculation card (weight × rate − paid = surcharge) + «Оплатить». «Готова к выдаче» shows a large pickup code (monospace, copy) + optional QR, pickup point card with hours and «Маршрут».

### 7.13 Login
- Clean screen: illustration on top, h1 «Вход», `PhoneField`, consent text, primary «Получить код», divider «или», «Войти через Google» (and Apple on iOS) outline buttons.
- OTP: 4–6 large boxes, auto-focus, autofill, resend timer «Отправить снова через 0:42», «куда отправлен код» hint, error shakes the boxes.

### 7.14 SKU sheet and size chart
- **SKU bottom sheet** (opened from «В корзину» on the video feed, a tile or the product page when no variant is chosen): top row = selected variant photo (72 px, rounded 12) + price + stock caption; then colour thumbnails (wrap grid, 56 px, selected = 2-px orange border + check), size chips, `QuantityStepper`, optional «Комментарий для оператора» row (expands into a text field). Sticky primary button text adapts: «В корзину» / «Купить сейчас» / «Выберите размер» (disabled until all options are chosen).
- **Size chart sheet:** title + segmented control (Одежда / Обувь if both exist), a horizontally scrollable table with sticky first column (Chinese size → RU/EU size → chest/length cm), zebra rows, «Как снять мерки» illustration row at the bottom.

### 7.15 Quick order
- Bottom sheet from «Купить сейчас» on the product page or «Быстрый заказ» in the cart, titled «Быстрый заказ». One-line explanation «Оставьте номер — оператор позвонит и оформит заказ», mini summary (thumbnail + title + price or «3 товара · 1 216 TMT»).
- Guest: `PhoneField` → «Получить код» → inline `OtpField` in the same sheet (smooth height animation, no new page). Signed-in: just the phone shown + «Подтвердить».
- Success state inside the sheet: check animation, «Заказ №10234 принят», «Оператор свяжется с вами в рабочее время», buttons «К заказу» / «Продолжить покупки».

### 7.16 Promotions
- **List:** vertical cards; each card = banner image (2:1, radius 16), title (h3), short subtitle, end-date chip or live countdown («Осталось 2 д 04:15»), type badge (Скидка дня / 2+1 / Бесплатная доставка). Ended promos are hidden.
- **Promo page:** collapsing header with the banner (SliverAppBar, parallax), title, conditions block (icon rows: how much, until when, what it applies to, combinable with promo codes or not), «Скопировать промокод» chip if the promo has a code, then the product grid with sort and filter toolbar.

### 7.17 Favourites, viewed, price alerts
- **Favourites** (tab root): h1 title + count, toolbar (sort: добавлены недавно / цена / скидка; «Выбрать» mode for bulk delete or add to cart). 2-column `ProductTile` grid; a green «Цена снизилась −15%» ribbon on tiles whose price dropped; unavailable items greyed with «Нет в наличии» and «Похожие» link. Empty: heart illustration + «Сохраняйте товары, чтобы не потерять» + «В каталог». Guest: same grid from local storage + a soft banner «Войдите, чтобы избранное было на всех устройствах».
- **Viewed:** list grouped by day (Сегодня / Вчера / 12 ноября), compact horizontal rows (image 72, title, price), «Очистить историю» in the app bar menu.
- **Price alerts:** list rows (image, title, price when subscribed → current price, switch). Subscribing on the product page = bell icon toggle with toast «Сообщим, когда цена снизится».

### 7.18 Surcharges, refunds and claims
- **Surcharges and refunds:** segmented tabs «К оплате / Возвраты». Surcharge card: reason icon (weight / price increase), reason title, related order or parcel link, calculation lines, amount in warning colour, deadline timer if any, «Оплатить» primary (opens a mini sheet: pay from balance / card). Refund card: amount in success colour, destination (Баланс / Карта / Наличные), status chip (Оформлен → Одобрен → Выплачен), date.
- **Claim form** (from a delivered item, within N days; show remaining days chip): step-free single screen: selected item card, reason radio list (Брак / Не тот товар / Недокомплект / Другое), description field with counter, media grid (up to 5 photos + 1 video; empty slots are dashed squares with + icon; upload progress ring on each; remove ×), «Отправить претензию» primary. After sending: status card on the order item «Претензия на рассмотрении» with timeline (Отправлена → На рассмотрении → Решение) and the decision text when ready.

### 7.19 Reviews
- **All reviews screen:** summary header (big average «4,7», stars, count, 5-row distribution bars), filter chips (Все / С фото / 5★ … 1★ / Переведённые), review cards: avatar initials, name, date, stars, chosen SKU caption («Цвет: чёрный, размер M»), text (5 lines + «Ещё»), photo strip (tap → viewer), «Переведено с китайского» label on source reviews, store reply as an indented grey block.
- **Write review:** item card on top, large 5-star picker (tap + drag, haptic per star, label under it: «Ужасно … Отлично»), text field with hint, media slots (5 photos + 1 video), «Отправить». Success: «Спасибо! Отзыв появится после модерации».
- **My reviews:** list with status chips (На модерации / Опубликован / Отклонён + reason).

### 7.20 Balance and wallet
- Balance hero card: solid `primary` card (no gradient), white bold balance in `display`, caption «Доступно для оплаты заказов»; under it a debt row (warning) if any, with «Погасить». Buttons «Пополнить» (white on orange card) and «История».
- Top-up sheet: amount field with quick chips (100 / 300 / 500 / 1 000 TMT), «Пополнить картой» → payment flow.
- Operations list grouped by date; row = type icon in a tinted circle, title («Возврат за заказ №10234»), time, amount right-aligned (+ green / − ink), tap → related order.

### 7.21 Notifications
- Grouped «Сегодня / Ранее», each row: type icon in tinted circle (order = orange, parcel = blue, payment = warning, promo = accent, support = graphite), bold title if unread + unread dot, 2-line body, relative time; optional image thumbnail for promos. Swipe to mark read; «Прочитать все» in the app bar. Tapping opens the target screen. Empty: bell illustration «Здесь появятся новости о ваших заказах».

### 7.22 Support chat and "Find me a product"
- **Chat:** app bar with support avatar, name «Поддержка», online/working-hours caption. Bubbles: user = `primarySoft` right-aligned, operator = `surface` left-aligned, radius 18 with a smaller tail corner; time + delivery ticks under user messages; day separators; image messages as rounded thumbnails (grid for 2–4); product card messages (image, title, price, «Открыть») sent by operators; order chip messages. Input bar: attach (+) → sheet (Камера / Галерея / Заказ / Найдите мне товар), text field that grows to 5 lines, send button turns orange when there is text. Failed message: red «!» + «Повторить». Quick-start chips when the chat is empty («Где мой заказ?», «Как оплатить доплату?», «Найдите мне товар»).
- **"Find me a product" form:** illustration header, «Опишите товар» text area, photo slots (up to 5) or «Ссылка (необязательно)» field, «Отправить заявку». Afterwards it appears in the chat as a special request card with status (Ищем / Найдено → product card).

### 7.23 Wholesale
- **Become wholesaler:** benefits header (3 icon rows: оптовые цены, счета и накладные, персональные условия), form (name, phone prefilled, company / ИП, city), «Отправить заявку». Status card afterwards: На рассмотрении (clock, info colour) / Одобрена (success, group name «Опт 1») / Отклонена (reason + «Подать снова»).
- **Wholesale on product page:** tier price table (quantity range → price per unit, current tier highlighted), min batch caption, «Заказать сеткой» button → **size grid screen**: rows = colours (thumbnail + name), columns = sizes, cells = compact numeric steppers; sticky header row and first column; bottom bar shows total pieces, total sum, min-batch check («Минимум 10 шт — добавьте ещё 3»), «В корзину».
- **Documents:** list per order: «Счёт №…» and «Накладная №…» rows with PDF icon, date, «Скачать» / «Поделиться».

### 7.24 Profile edit, addresses list, settings
- **Edit profile:** avatar initials circle, fields (Имя, Фамилия, Email optional, Регион picker), phone row with «Изменить» (→ OTP flow for the new number), «Сохранить» sticky (enabled only when changed).
- **Addresses list:** cards with a mini static map thumbnail, address text, «квартира/ориентир», «По умолчанию» badge; overflow menu (Изменить / Сделать основным / Удалить); «Добавить адрес» primary at the bottom.
- **Settings:** grouped rows: Язык (RU / TK segmented), Регион, Код входа приходит в (SMS / Telegram / Email radio), Уведомления (switches per type; service ones locked with a lock icon and caption «Обязательные»), Google аккаунт (Привязать / Отвязать), О приложении (version), «Выйти» (danger text), «Удалить аккаунт» (danger, separate group). Delete flow: warning screen listing consequences, active orders or debt warning, OTP confirmation, final destructive button.

### 7.25 Info and service screens
- **Info pages:** list of rows (О нас, Доставка и оплата, Пункты выдачи, Возврат, FAQ, Оферта, Политика, Контакты). Article layout: 16-dp margins, `body` with 1.5 line height, h2 subheads, tables styled like specs. «Доставка и оплата» renders delivery types as `DeliveryOptionCard`s and a region tariff table from the API. FAQ = searchable accordion. Contacts = tap-to-call, Telegram, WhatsApp, map card.
- **Service screens** (each: centred illustration, h1, one sentence, one action): Update required («Обновить» → store; not dismissible), Maintenance («Мы скоро вернёмся» + «Проверить снова»), Not found («Товар не найден» + «На главную»), Server error («Повторить»), Offline («Нет соединения» + «Повторить»; with cached orders available show «Открыть мои заказы»), Account blocked («Свяжитесь с поддержкой» + call button).

## 8. Localisation and text rules
- No string literals in widgets: all text through gen-l10n keys (RU + TK ARB) or server texts.
- Design for Turkmen first (longest strings): buttons may wrap to 2 lines and never truncate the verb; chips truncate only free-form names. Test every screen in TK at text scale 1.3.
- Dates: «24 ноября» / «24-nji noýabr»; relative times for chat and notifications.

## 9. Accessibility
- WCAG AA contrast; 48-dp targets; semantic labels on icon buttons («Добавить в избранное»); prices read as full phrases («216 манатов, было 260»); focus order logical; status not by colour alone.

## 10. Implementation rules for Claude Code
- Flutter stable, Dart 3, Clean Architecture + BLoC (see functional spec). This brief affects `presentation` only.
- Build order: theme tokens → component kit + Kit screen → navigation shell → screens in the order of the spec's milestones.
- Every screen widget is split into small private widgets or files (≤ ~200 lines each), uses `const` wherever possible, and contains no business logic.
- Images: `cached_network_image` with `memCacheWidth` sized to the tile; skeletons via a shared shimmer.
- Lists: `CustomScrollView` + slivers for Home, Product and Catalog; no nested scroll jank.
- Keep 60 fps on a mid-range Android: avoid heavy blur except on the video overlay; use `RepaintBoundary` for video and carousels.
- After each screen: run it at 360 dp and 412 dp widths, RU and TK, text scale 1.0 and 1.3, and fix any overflow before moving on.

## 11. Definition of done (per screen)
- [ ] Uses only design tokens and kit components.
- [ ] Loading, empty, error and offline states are implemented and look designed.
- [ ] No overflow in TK at 1.3× text scale on a 360-dp screen.
- [ ] One clear primary action; money breakdowns where money is shown.
- [ ] Motion and haptics per section 4.5; respects reduced motion.
- [ ] Semantics labels on all icon-only buttons.
