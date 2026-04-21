# MakeCode extension for the solder:bit Segment

## Use this extension

1. Open [MakeCode](https://makecode.microbit.org/) and create a new project, or open an exisitng one.
2. Click on `Extensions` under the gearwheel menu.

![MakeCode](/guide/makecode.png)

3. Search for `https://github.com/devices-lab/pxt-solderbit-segment`

![Searcing for extensions in MakeCode](/guide/search.png)

4. Select `solderbit-segment`

![Selecting the extension in MakeCode](/guide/solderbit-segment-search.png)

## Connecting your device

### solder:bit Segment

The solder:bit Segment communicates with the micro:bit over I2C using pins P19 and P20.
Connect the device to the micro:bit using the following pinout:

| solder:bit Segment | BBC micro:bit |
| ------------------ | ------------- |
| GND                | GND           |
| VDD                | 3V            |
| SDA                | P20           |
| SCL                | P19           |

### solder:bit Segment _Shift Edition_

The Shift Edition uses a SIPO shift register, communicating with the micro:bit over SPI using pins P0, P1, and P2.
Connect the device to the micro:bit using the following pinout:

| solder:bit Segment _Shift Edition_ | BBC micro:bit |
| ---------------------------------- | ------------- |
| GND                                | GND           |
| VCC                                | 3V            |
| STCP                               | P2            |
| SHCP                               | P1            |
| DS                                 | P0            |

## Editing this extension in Makecode

You may edit or remix this project directly in MakeCode.

1. Open [MakeCode](https://makecode.microbit.org/).
2. Click on `Import` then click on `Import URL`.
3. Paste `https://github.com/devices-lab/pxt-solderbit-segment` and click import.

#### Metadata (used for search, rendering)

- for PXT/microbit
  <script src="https://makecode.com/gh-pages-embed.js"></script><script>makeCodeRender("{{ site.makecode.home_url }}", "{{ site.github.owner_name }}/{{ site.github.repository_name }}");</script>
