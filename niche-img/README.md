# Картинки ниш по умолчанию

Обложки для приложения записи на случай, когда у точки мало своих фото или они плохие. По три на нишу, вертикаль 4:5.

- Формат: webp 1200×1500, качество 82, вес от 60 до 210 КБ.
- Сделано 01.10.2026 через Codex CLI: встроенная генерация картинок по подписке ChatGPT, 0 ₽. Модель отдаёт 1122×1402 (repair/hero-3 пришла 1086×1448), дальше обрезка по центру ровно в 4:5 и масштаб до 1200×1500.
- `contact_sheet.jpg`: все 15 превью с подписями. Жёлтая линия на превью отмечает верх нижней трети, где будет текст интерфейса.
- Каждую картинку смотрел целиком и с увеличением: нет текста и букв, логотипов, номеров, лиц людей, кривых рук.
- Как повторить: `codex exec --skip-git-repo-check -C <папка> -s workspace-write -c model_reasoning_effort="low" - < prompt.txt`. В задании просьба передать промпт инструменту дословно и скопировать исходный PNG из `~/.codex/generated_images/`. С российского IP Codex не работает, нужен VPN.

## Общий хвост промпта

Добавлялся в конец каждого промпта ниже.

```
Format: vertical 4:5 portrait photograph, exact canvas 1200x1500 px.
Style: photorealistic editorial photography, full-frame camera, natural true-to-life colors, real material textures, subtle film grain. Not CGI, not illustration, no HDR look, no oversaturation.
Composition: calm and uncluttered, main subject in the upper two thirds of the frame. Keep the lower third quiet and low in detail, because app UI text will be placed over it.
Strictly avoid: any text, letters, numbers or symbols anywhere (signs, posters, screens, labels, tags, packaging, tools, tire sidewalls); logos, brand names, emblems, badges, watermarks; license plates; people's faces (if a person appears, show only hands, arms or back, face out of frame).
```

## Файлы и промпты

### Баня (`banya/`)

**`banya/hero-1.webp`** (98 КБ). Парная изнутри: липовые полки, берёзовый и дубовый веники, шайка с ковшом, пар и тёплый янтарный свет.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a traditional Russian banya.
Scene: interior of a traditional Russian banya steam room (parilka), not a Finnish sauna. Walls of smooth light linden boards, wide two-tier linden-wood benches (polok) with softly rounded edges. Two bath brooms (veniki) of birch and oak with fresh green leaves lie on the upper bench, a wooden bucket with a wooden ladle stands on the lower bench. Soft steam hangs in the air and catches the light.
Light and mood: warm amber glow from a small wall lamp behind a wooden slatted shade, gentle haze, cozy and calm.
Camera: eye-level wide shot from the doorway, 28mm lens, slight depth of field.
Lower third: clean wooden floor and the front board of the lower bench in soft warm shadow.
No people.
```

**`banya/hero-2.webp`** (202 КБ). Бревенчатая баня в зимних сумерках: снег, дым из трубы, поленница, берёзы и ельник. Внизу ровный снег.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a traditional Russian banya.
Scene: a cozy small Russian log banya (srub of rounded pine logs with jute caulking between the logs) with a gabled roof and a small porch, on a countryside plot at early winter dusk. Fresh snow on the roof and on the ground, warm amber light glowing from one small window, white smoke rising from a metal chimney, a neat stack of birch firewood by the wall, birch trees and dark spruce forest behind, deep blue twilight sky.
Camera: three-quarter view from a slightly low angle, 35mm lens, the banya sits in the upper middle of the frame.
Lower third: smooth untouched snow with soft blue shadows, very little detail.
No people.
```

**`banya/hero-3.webp`** (120 КБ). Деталь: шайка с латунными обручами, ковш, пар над камнями каменки, веник в тазу.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a traditional Russian banya.
Scene: close-up detail inside a Russian banya steam room. A wooden bucket (shaika) with two brass hoops and a long-handled wooden ladle resting across its rim stand next to a stove with a pile of dark hot stones (kamenka). Water has just been splashed on the stones and a cloud of white steam rises, glowing in warm backlight. A birch broom (venik) soaks in a small wooden basin at the edge of the frame. Linden-board wall behind, softly out of focus.
Light and mood: warm amber backlight through the steam, dark moody surroundings.
Camera: close-up, 85mm lens, shallow depth of field, steam and stones in the upper middle.
Lower third: dark wooden bench surface in soft shadow, almost empty.
No people, no hands.
```

### Шиномонтаж (`tire/`)

**`tire/hero-1.webp`** (159 КБ). Бокс шиномонтажа: седан без значков и номеров на двухстоечном подъёмнике, шиномонтажный станок, стопки шин, жёлтые акценты. За воротами мокрая улица, берёзы и панельный дом.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a tire service (shinomontazh) in a Russian city.
Scene: a clean, modern tire service bay in late autumn. A generic silver compact sedan with no badges or emblems and no license plates is raised on a two-post lift with its wheels removed. A tire changer machine stands in the foreground on the left, neat stacks of black winter tires along the wall. Yellow lift arms and a yellow safety line on a light grey epoxy floor. Through the open sectional gate at the back: a wet grey street, bare birch trees and a panel apartment building, softly out of focus.
Light and mood: cool white LED ceiling light, crisp industrial look with yellow accents, tidy and calm.
Camera: wide shot at eye level, 24mm lens, from the side of the bay.
Lower third: clean empty epoxy floor with part of a yellow safety line.
All tires and machines are plain, with no lettering. No people.
```

**`tire/hero-2.webp`** (98 КБ). Колесо крутится на балансировочном стенде, диск и шина размыты движением, корпус чёрно-жёлтый. Людей нет.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a tire service in a Russian city.
Scene: close-up of a wheel being balanced. An alloy wheel with a black winter tire spins fast on the shaft of a wheel balancing machine during the measuring run. The rim spokes and the whole tire are smeared by strong circular motion blur, while the balancer shaft, the quick-release hub nut and the black-and-yellow machine body stay sharp. The machine's display is out of frame. No people, no hands.
Light and mood: cool industrial light with yellow accents on the machine body, dark blurred workshop background with a hint of warm light.
Camera: close-up, 50mm lens, shallow depth of field, the wheel in the upper middle of the frame.
Lower third: dark matte machine body and blurred floor, low detail.
The tire is a plain blank tire with no lettering, numbers or symbols.
```

**`tire/hero-3.webp`** (194 КБ). Шинный отель: стеллажи с жёлтыми балками, комплекты в пакетах, бирки без надписей.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a tire service in a Russian city.
Scene: a tire hotel (seasonal tire storage room). Long rows of tall metal racks with yellow beams hold neatly stored sets of four tires, some stacked, some wrapped in clean semi-transparent bags; small blank paper tags hang on the sets with no writing on them. A long aisle runs between the racks.
Light and mood: cool even LED light, clean and orderly, calm.
Camera: one-point perspective down the aisle at eye level, 35mm lens.
Lower third: smooth grey concrete floor of the aisle, empty.
Tire sidewalls are plain with no lettering. No people.
```

### Детейлинг (`detailing/`)

**`detailing/hero-1.webp`** (124 КБ). Чёрный седан без значков и номера в тёмной студии, по лаку идут линии LED-ламп.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a car detailing studio.
Scene: a glossy black sedan in a dark detailing studio. The car has no badges or emblems and no license plate. Long linear LED light strips on the ceiling and walls are reflected as clean parallel lines across the mirror-like paint of the hood and doors.
Light and mood: dark, moody, premium; deep blacks with crisp white light lines, a light haze in the air.
Camera: front three-quarter view from a low angle, 35mm lens, the car in the middle of the frame.
Lower third: dark polished floor with soft reflections, mostly empty.
No people.
```

**`detailing/hero-2.webp`** (94 КБ). Полировка тёмно-синего капота эксцентриковой машинкой, руки в чёрных нитриловых перчатках.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a car detailing studio.
Scene: close-up of paint polishing. A dual-action machine polisher with a soft foam pad, held by two hands in black nitrile gloves, works on the glossy dark blue hood of a car. A thin film of polish on the paint, linear LED light reflections across the surface, a folded grey microfiber towel nearby.
Light and mood: dark studio, crisp reflections, controlled cool light.
Camera: close-up, 50mm lens, shallow depth of field, the polisher in the upper middle of the frame.
Lower third: smooth glossy paint surface fading into darkness, quiet.
The polisher and towel have no logos or text. Only gloved hands and forearms visible.
```

**`detailing/hero-3.webp`** (104 КБ). Химчистка бежевого кожаного сиденья щёткой с пеной, рука в перчатке.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a car detailing studio.
Scene: interior detailing of a car. A hand in a black nitrile glove cleans a light beige leather front seat with a soft brush and fine white foam; a microfiber cloth lies on the seat. Soft daylight enters through the open door.
Light and mood: clean, soft, bright, natural.
Camera: close-up from the open door, 40mm lens, shallow depth of field.
Lower third: seat cushion and door sill softly blurred, little detail.
No branding anywhere in the cabin, no screens visible. Only the gloved hand and forearm visible.
```

### Груминг (`grooming/`)

**`grooming/hero-1.webp`** (60 КБ). Белый шпиц после стрижки на столе в салоне мятно-розовых тонов.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a pet grooming salon.
Scene: a happy, freshly groomed small white Pomeranian spitz with a fluffy rounded haircut stands on a grooming table in a bright pastel grooming salon, mouth slightly open as if smiling. Mint and powder-pink walls, soft daylight from a large window, a few brushes and a comb on a shelf, softly out of focus.
Mood: cheerful, clean, airy.
Camera: eye level with the dog, 50mm lens, shallow depth of field, the dog in the upper middle of the frame.
Lower third: clean pale grooming table surface, empty.
No people.
```

**`grooming/hero-2.webp`** (132 КБ). Шелти после мытья в кремовом полотенце, видны только руки грумера.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a pet grooming salon.
Scene: a fluffy medium-sized dog (sable and white Shetland sheepdog type) right after a bath, wrapped in a soft cream towel on a grooming table, damp fur, happy relaxed face. A groomer's hands gently dry the dog with the towel. Bright pastel salon, a white grooming bathtub softly blurred behind.
Light: soft daylight, airy pastel tones.
Camera: eye level, 50mm lens, shallow depth of field, the dog in the upper middle of the frame.
Lower third: towel folds and the table edge, quiet.
Only the groomer's hands and forearms are visible, no human face.
```

**`grooming/hero-3.webp`** (119 КБ). Сибирская кошка на столе, грумер вычёсывает её пуходёркой.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a pet grooming salon.
Scene: a calm, fluffy long-haired Siberian cat (brown tabby) lies on a grooming table while a groomer's hand gently brushes its fur with a soft slicker brush; a few loose tufts of fur on the table. Bright pastel salon with soft daylight.
Mood: gentle, calm, caring.
Camera: close-up, 70mm lens, shallow depth of field, the cat in the upper middle of the frame.
Lower third: pale table surface, nearly empty.
Only the hand and wrist are visible, no human face.
```

### Ремонт техники (`repair/`)

**`repair/hero-1.webp`** (135 КБ). Рабочий стол мастера: вскрытый смартфон, отвёртки и пинцеты, микроскоп. За окном двор с панельками и берёзами.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a phone and laptop repair workshop.
Scene: a tidy repair workbench. An opened generic smartphone with the back panel removed, showing its battery and circuit board, lies on a dark blue anti-static mat; next to it a neat row of precision screwdrivers and tweezers, a small magnetic parts tray, and a stereo inspection microscope on the bench. Behind, through a window, softly out of focus: a residential courtyard with panel apartment buildings and birch trees.
Light and mood: warm desk-lamp light mixed with cool daylight from the window, calm and precise.
Camera: three-quarter high angle, 50mm lens, shallow depth of field.
Lower third: clean, empty part of the anti-static mat.
No logos on the phone or tools, chips without markings. No people.
```

**`repair/hero-2.webp`** (123 КБ). Ремонт ноутбука: снята нижняя крышка, руки с отвёрткой, лоток и чашка с винтами.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a phone and laptop repair workshop.
Scene: a laptop being repaired. A generic laptop lies upside down with its bottom cover removed, showing the motherboard, cooling fan and copper heat pipe. A technician's hands, one holding a precision screwdriver; tiny screws arranged in a magnetic tray; dark blue anti-static mat.
Light: cool overhead light with a warm desk-lamp accent.
Camera: high angle at about 60 degrees, 40mm lens, laptop in the upper middle of the frame.
Lower third: empty anti-static mat area.
No logos, stickers or labels; components without markings; no screens with content. Only hands and forearms visible.
```

**`repair/hero-3.webp`** (82 КБ). Полка с готовыми устройствами в зип-пакетах, бирки пустые.

```
Use case: photorealistic-natural. Asset: hero background for the booking app of a phone and laptop repair workshop.
Scene: shelves with repaired devices waiting for pickup in a small repair shop: smartphones, a tablet and a closed laptop, each in a clear zip bag with a small blank paper tag tied on, neatly arranged on light wooden shelves.
Light and mood: warm, soft, orderly, shallow depth of field.
Camera: slight angle along the shelves, 50mm lens at f/2.
Lower third: the lower shelf softly out of focus and darker.
No writing on any tag or sticker, no logos on devices, device screens dark. No people.
```

## Что перегенерировано

- `tire/hero-2.webp`: первые две попытки (рука в перчатке ставит грузик на диск) дали выпуклые псевдобуквы на боковине шины, во второй их было почти не видно, но они были. Третья попытка с другим кадром: колесо крутится на стенде, шина размыта движением, текста нет. В работу ушла она.
- Остальные 14 приняты с первой попытки.
