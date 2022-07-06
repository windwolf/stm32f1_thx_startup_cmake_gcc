#include "ssd1306_demo.h"
#include "common/device.h"
#include "ssd1306/ssd1306.h"
#include "bsp.h"
#include "fonts/fonts.h"

#define LOG_MODULE "SSD1306demo"
#include "log.h"

PinDevice scl0_91;
PinDevice sda0_91;
SoftI2CDevice softi2c0_91;
I2CDevice i2c0_91;

SSD1306 ZJ0_91in = {
    .width = 128,
    .height = 32,
    .memoryMode = SSD1306_MEMORY_ADDRESSING_MODE_VERTICAL,
    .enableChargePump = true,
    .comInverted = true,
    .segmentInverted = true,
    .comLeftRightRemap = false,
    .comAlternative = false,
    .displayInverted = false,
    .displayStartLine = 0,
    .displayOffset = 0,
    .multiplexRatio = 31,
    .phase1period = 0x02,
    .phase2period = 0x02,
    .vcomhDeselectLevel = 0x40,
    .fosc = 0x0F,
    .clkDivide = 0x00,
};

CanvasInfo canvasInfo_ZJ0_91in = {
    .width = 128,
    .height = 32,
    .direction = FONT_MEMORY_LAYOUT_DIRECTION_VERTICAL,
    .pixelSize = PIXEL_SIZE_1BIT,
};

PinDevice scl0_96;
PinDevice sda0_96;
SoftI2CDevice softi2c0_96;
I2CDevice i2c0_96;

SSD1306 ZJ0_96in = {
    .width = 128,
    .height = 64,
    .memoryMode = SSD1306_MEMORY_ADDRESSING_MODE_VERTICAL,
    .enableChargePump = true,
    .comInverted = true,
    .segmentInverted = true,
    .comLeftRightRemap = false,
    .comAlternative = true,
    .displayInverted = false,
    .displayStartLine = 0,
    .displayOffset = 0,
    .multiplexRatio = 63,
    .phase1period = 0x02,
    .phase2period = 0x02,
    .vcomhDeselectLevel = 0x40,
    .fosc = 0x0F,
    .clkDivide = 0x00,
};

CanvasInfo canvasInfo_ZJ0_96in = {
    .width = 128,
    .height = 64,
    .direction = FONT_MEMORY_LAYOUT_DIRECTION_VERTICAL,
    .pixelSize = PIXEL_SIZE_1BIT,
};

FontDrawInfo fontDrawInfo = {
    .backColor = 0x0,
    .foreColor = 0x1,
    .lineSpacing = 1,
    .spacing = 0,
};

static void device_init()
{
    pin_device_create(&scl0_91, GPIOB, GPIO_PIN_6, PIN_DEVICE_STATUS_INVERSE_NORMAL);
    pin_device_create(&sda0_91, GPIOB, GPIO_PIN_7, PIN_DEVICE_STATUS_INVERSE_NORMAL);
    softi2c0_91.scl = &scl0_91;
    softi2c0_91.sda = &sda0_91;
    i2c_device_create(&i2c0_91, &softi2c0_91);
    ssd1306_create(&ZJ0_91in, &i2c0_91);
    ssd1306_init(&ZJ0_91in);

    pin_device_create(&scl0_96, GPIOA, GPIO_PIN_12, PIN_DEVICE_STATUS_INVERSE_NORMAL);
    pin_device_create(&sda0_96, GPIOA, GPIO_PIN_15, PIN_DEVICE_STATUS_INVERSE_NORMAL);
    softi2c0_96.scl = &scl0_96;
    softi2c0_96.sda = &sda0_96;
    i2c_device_create(&i2c0_96, &softi2c0_96);
    ssd1306_create(&ZJ0_96in, &i2c0_96);
    ssd1306_init(&ZJ0_96in);
}
void ssd1306_demo(void)
{
    device_init();

    while (1)
    {
        FONTS_FillData(ZJ0_96in.data_buffer, &canvasInfo_ZJ0_96in, 0, 0, "0123456789ABCDEFGHIJK", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_96in.data_buffer, &canvasInfo_ZJ0_96in, 0, 8, "123456789ABCDEFGHIJK0", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_96in.data_buffer, &canvasInfo_ZJ0_96in, 0, 16, "23456789ABCDEFGHIJK01", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_96in.data_buffer, &canvasInfo_ZJ0_96in, 0, 24, "3456789ABCDEFGHIJK012", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_96in.data_buffer, &canvasInfo_ZJ0_96in, 0, 32, "456789ABCDEFGHIJK0123", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_96in.data_buffer, &canvasInfo_ZJ0_96in, 0, 40, "56789ABCDEFGHIJK01234", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_96in.data_buffer, &canvasInfo_ZJ0_96in, 0, 48, "6789ABCDEFGHIJK012345", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_96in.data_buffer, &canvasInfo_ZJ0_96in, 0, 56, "789ABCDEFGHIJK0123456", &Font6x8_v, &fontDrawInfo);
        ssd1306_draw(&ZJ0_96in);

        FONTS_FillData(ZJ0_91in.data_buffer, &canvasInfo_ZJ0_91in, 0, 0, "0123456789ABCDEFGHIJK", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_91in.data_buffer, &canvasInfo_ZJ0_91in, 0, 8, "123456789ABCDEFGHIJK0", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_91in.data_buffer, &canvasInfo_ZJ0_91in, 0, 16, "23456789ABCDEFGHIJK01", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_91in.data_buffer, &canvasInfo_ZJ0_91in, 0, 24, "3456789ABCDEFGHIJK012", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_91in.data_buffer, &canvasInfo_ZJ0_91in, 0, 32, "456789ABCDEFGHIJK0123", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_91in.data_buffer, &canvasInfo_ZJ0_91in, 0, 40, "56789ABCDEFGHIJK01234", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_91in.data_buffer, &canvasInfo_ZJ0_91in, 0, 48, "6789ABCDEFGHIJK012345", &Font6x8_v, &fontDrawInfo);
        FONTS_FillData(ZJ0_91in.data_buffer, &canvasInfo_ZJ0_91in, 0, 56, "789ABCDEFGHIJK0123456", &Font6x8_v, &fontDrawInfo);
        ssd1306_draw(&ZJ0_91in);
        LOG_I("draw finished.");
    }
}