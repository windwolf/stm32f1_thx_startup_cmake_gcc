#include "inc/ssd1306_demo.h"
#include "common/device.h"
#include "ssd1306/ssd1306.h"
#include "bsp.h"
#include "fonts/fonts.h"

PinDevice scl;
PinDevice sda;
SoftI2CDevice softi2c;
I2CDevice i2c;
SSD1306 ZJ0_91in = {
    .width = 128,
    .height = 32,
    .memoryMode = SSD1306_MEMORY_ADDRESSING_MODE_HORIZONTAL,
    .enableChargePump = true,
    .comInverted = true,
    .segmentInverted = true,
    .comLeftRightRemap = false,
    .comAlternative = false,
    .displayStartLine = 0,
    .displayOffset = 0,
    .multiplexRatio = 0x3F,
    .phase1period = 0x02,
    .phase2period = 0x02,
    .vcomhDeselectLevel = 0x0,
    .fosc = 0xF,
    .clkDivide = 0x3,
};

static void device_init()
{
    pin_device_create(&scl, GPIOA, GPIO_PIN_0, PIN_DEVICE_STATUS_INVERSE_NORMAL);
    pin_device_create(&sda, GPIOA, GPIO_PIN_1, PIN_DEVICE_STATUS_INVERSE_NORMAL);
    softi2c.scl = &scl;
    softi2c.sda = &sda;
    i2c_device_create(&i2c, &softi2c);
    ssd1306_create(&ZJ0_91in, &i2c);
    ssd1306_init(&ZJ0_91in);
}
void ssd1306_demo(void)
{
    device_init();
    CanvasInfo canvasInfo = {
        .width = 128,
        .height = 64,
        .buffer = (uint8_t *)ZJ0_91in.data_buffer,
        .direction = FONT_MEMORY_LAYOUT_DIRECTION_VERTICAL,
        .pixelSize = PIXEL_SIZE_1BIT,
    };
    FontDrawInfo fontDrawInfo = {
        .backColor = 0x0,
        .foreColor = 0x1,
        .lineSpacing = 1,
        .spacing = 0,
    };
    FONTS_FillData(&canvasInfo, 0, 0, "windwolf", &Font6x8_v, &fontDrawInfo);
}