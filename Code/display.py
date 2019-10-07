import board
import digitalio
import busio
import displayio
import adafruit_ssd1322
import adafruit_gfx

displayio.release_displays()

spi = busio.SPI(board.SCL, board.SDA)
tft_cs = board.D6
tft_dc = board.D9
tft_reset = board.D5

display_bus = displayio.FourWire(spi, command=tft_dc, chip_select=tft_cs,
                                 reset=tft_reset, baudrate=1000000)

d = adafruit_ssd1322.SSD1322(display_bus, width=256, height=66, colstart=28)
bitmap = displayio.Bitmap(d.width, d.height, 2)
palette = displayio.Palette(3)
palette[0] = 0x000000
palette[1] = 0xffffff
tile_grid = displayio.TileGrid(bitmap, pixel_shader=palette)
group = displayio.Group()
group.append(tile_grid)
d.show(group)

def pixel(x,y,color):
    bitmap[x, y] = color

gfx = gfx.GFX(d.width,d.height,pixel)
gfx.fill_rect(118,22,10,10,1)
